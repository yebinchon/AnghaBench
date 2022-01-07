
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int flags; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef TYPE_2__* hcb_p ;
typedef TYPE_3__* ccb_p ;
typedef int bus_dma_segment_t ;
struct TYPE_19__ {scalar_t__ dmamapped; int* cdb_buf; scalar_t__ nego_status; int host_status; int dmamap; union ccb* cam_ccb; scalar_t__ arg; } ;
struct TYPE_18__ {scalar_t__ device_id; int revision_id; int data_dmat; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CAM_DIR_MASK ;
 int CAM_REQ_ABORTED ;
 scalar_t__ CAM_REQ_INPROG ;
 int CAM_REQ_TOO_BIG ;
 int HS_BUSY ;
 int HS_NEGOTIATE ;
 int MA_OWNED ;
 int MDELAY (int) ;
 scalar_t__ PCI_ID_SYM53C896 ;
 scalar_t__ SYM_DMA_READ ;
 int SYM_LOCK_ASSERT (int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int panic (char*) ;
 int sym_enqueue_cam_ccb (TYPE_3__*) ;
 int sym_fast_scatter_sg_physical (TYPE_2__*,TYPE_3__*,int *,int) ;
 int sym_free_ccb (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ sym_get_cam_status (union ccb*) ;
 int sym_put_start_queue (TYPE_2__*,TYPE_3__*) ;
 int sym_scatter_sg_physical (TYPE_2__*,TYPE_3__*,int *,int) ;
 int sym_set_cam_status (union ccb*,int ) ;
 int sym_setup_data_pointers (TYPE_2__*,TYPE_3__*,int) ;
 int sym_xpt_done (TYPE_2__*,union ccb*,TYPE_3__*) ;

__attribute__((used)) static void
sym_execute_ccb(void *arg, bus_dma_segment_t *psegs, int nsegs, int error)
{
 ccb_p cp;
 hcb_p np;
 union ccb *ccb;

 cp = (ccb_p) arg;
 ccb = cp->cam_ccb;
 np = (hcb_p) cp->arg;

 SYM_LOCK_ASSERT(MA_OWNED);




 if (sym_get_cam_status(ccb) != CAM_REQ_INPROG)
  goto out_abort;




 if (error) {
  cp->dmamapped = 0;
  sym_set_cam_status(cp->cam_ccb, CAM_REQ_ABORTED);
  goto out_abort;
 }




 if (nsegs) {
  int retv;

  if (np->device_id == PCI_ID_SYM53C896 && np->revision_id <= 1)
   retv = sym_scatter_sg_physical(np, cp, psegs, nsegs);
  else
   retv = sym_fast_scatter_sg_physical(np,cp, psegs,nsegs);
  if (retv < 0) {
   sym_set_cam_status(cp->cam_ccb, CAM_REQ_TOO_BIG);
   goto out_abort;
  }
 }





 if (cp->dmamapped) {
  bus_dmamap_sync(np->data_dmat, cp->dmamap,
   (cp->dmamapped == SYM_DMA_READ ?
    BUS_DMASYNC_PREREAD : BUS_DMASYNC_PREWRITE));
 }





 cp->host_status = cp->nego_status ? HS_NEGOTIATE : HS_BUSY;




 sym_setup_data_pointers(np, cp, (ccb->ccb_h.flags & CAM_DIR_MASK));




 sym_enqueue_cam_ccb(cp);
 sym_put_start_queue(np, cp);
 return;
out_abort:
 sym_xpt_done(np, ccb, cp);
 sym_free_ccb(np, cp);
}
