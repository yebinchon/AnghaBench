
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int flags; int timeout; int status; struct pvscsi_softc* ccb_pvscsi_sc; } ;
union ccb {TYPE_2__ ccb_h; } ;
typedef int uint8_t ;
struct pvscsi_softc {int buffer_dmat; int dev; int lock; struct pvscsi_rings_state* rings_state; } ;
struct pvscsi_sg_element {scalar_t__ flags; int length; scalar_t__ addr; } ;
struct pvscsi_rings_state {int req_prod_idx; } ;
struct pvscsi_ring_req_desc {int * cdb; scalar_t__ data_addr; int flags; } ;
struct pvscsi_hcb {int callout; int dma_map; scalar_t__ sg_list_paddr; TYPE_1__* sg_list; struct pvscsi_ring_req_desc* e; union ccb* ccb; } ;
typedef scalar_t__ bus_dmasync_op_t ;
struct TYPE_7__ {scalar_t__ ds_addr; int ds_len; } ;
typedef TYPE_3__ bus_dma_segment_t ;
struct TYPE_5__ {struct pvscsi_sg_element* sge; } ;


 scalar_t__ BUS_DMASYNC_PREREAD ;
 scalar_t__ BUS_DMASYNC_PREWRITE ;


 int CAM_DIR_MASK ;


 int CAM_REQ_CMP_ERR ;
 int CAM_REQ_TOO_BIG ;
 int CAM_SIM_QUEUED ;
 int CAM_TIME_INFINITY ;
 int EFBIG ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int PVSCSI_FLAG_CMD_DIR_NONE ;
 int PVSCSI_FLAG_CMD_DIR_TODEVICE ;
 int PVSCSI_FLAG_CMD_DIR_TOHOST ;
 int PVSCSI_FLAG_CMD_WITH_SG_LIST ;
 int PVSCSI_MAX_SG_ENTRIES_PER_SEGMENT ;
 int SBT_1MS ;
 int bus_dmamap_sync (int ,int ,scalar_t__) ;
 int callout_reset_sbt (int *,int,int ,int ,struct pvscsi_hcb*,int ) ;
 int device_printf (int ,char*,int) ;
 int mb () ;
 int mtx_assert (int *,int ) ;
 int pvscsi_hcb_put (struct pvscsi_softc*,struct pvscsi_hcb*) ;
 int pvscsi_kick_io (struct pvscsi_softc*,int ) ;
 int pvscsi_timeout ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
pvscsi_execute_ccb(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
 struct pvscsi_hcb *hcb;
 struct pvscsi_ring_req_desc *e;
 union ccb *ccb;
 struct pvscsi_softc *sc;
 struct pvscsi_rings_state *s;
 uint8_t cdb0;
 bus_dmasync_op_t op;

 hcb = arg;
 ccb = hcb->ccb;
 e = hcb->e;
 sc = ccb->ccb_h.ccb_pvscsi_sc;
 s = sc->rings_state;

 mtx_assert(&sc->lock, MA_OWNED);

 if (error) {
  device_printf(sc->dev, "pvscsi_execute_ccb error %d\n", error);

  if (error == EFBIG) {
   ccb->ccb_h.status = CAM_REQ_TOO_BIG;
  } else {
   ccb->ccb_h.status = CAM_REQ_CMP_ERR;
  }

  pvscsi_hcb_put(sc, hcb);
  xpt_done(ccb);
  return;
 }

 e->flags = 0;
 op = 0;
 switch (ccb->ccb_h.flags & CAM_DIR_MASK) {
 case 129:
  e->flags |= PVSCSI_FLAG_CMD_DIR_NONE;
  break;
 case 130:
  e->flags |= PVSCSI_FLAG_CMD_DIR_TOHOST;
  op = BUS_DMASYNC_PREREAD;
  break;
 case 128:
  e->flags |= PVSCSI_FLAG_CMD_DIR_TODEVICE;
  op = BUS_DMASYNC_PREWRITE;
  break;
 case 131:

  break;
 }

 if (nseg != 0) {
  if (nseg > 1) {
   int i;
   struct pvscsi_sg_element *sge;

   KASSERT(nseg <= PVSCSI_MAX_SG_ENTRIES_PER_SEGMENT,
       ("too many sg segments"));

   sge = hcb->sg_list->sge;
   e->flags |= PVSCSI_FLAG_CMD_WITH_SG_LIST;

   for (i = 0; i < nseg; ++i) {
    sge[i].addr = segs[i].ds_addr;
    sge[i].length = segs[i].ds_len;
    sge[i].flags = 0;
   }

   e->data_addr = hcb->sg_list_paddr;
  } else {
   e->data_addr = segs->ds_addr;
  }

  bus_dmamap_sync(sc->buffer_dmat, hcb->dma_map, op);
 } else {
  e->data_addr = 0;
 }

 cdb0 = e->cdb[0];
 ccb->ccb_h.status |= CAM_SIM_QUEUED;

 if (ccb->ccb_h.timeout != CAM_TIME_INFINITY) {
  callout_reset_sbt(&hcb->callout, ccb->ccb_h.timeout * SBT_1MS,
      0, pvscsi_timeout, hcb, 0);
 }

 mb();
 s->req_prod_idx++;
 pvscsi_kick_io(sc, cdb0);
}
