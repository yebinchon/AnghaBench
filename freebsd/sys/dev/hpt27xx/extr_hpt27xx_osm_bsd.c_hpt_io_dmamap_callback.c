
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_19__ {int ds_len; int ds_addr; } ;
typedef TYPE_6__ bus_dma_segment_t ;
struct TYPE_15__ {int physical_sg; scalar_t__ data_out; scalar_t__ data_in; } ;
struct TYPE_22__ {TYPE_2__ flags; TYPE_7__* psg; int priv; } ;
struct TYPE_21__ {TYPE_5__* ccb; int timeout; int dma_map; TYPE_3__* vbus_ext; } ;
struct TYPE_14__ {int bus; } ;
struct TYPE_20__ {int eot; int size; TYPE_1__ addr; } ;
struct TYPE_17__ {int timeout_ch; } ;
struct TYPE_18__ {TYPE_4__ ccb_h; } ;
struct TYPE_16__ {int io_dmat; } ;
typedef TYPE_7__* PSG ;
typedef TYPE_8__* POS_CMDEXT ;
typedef TYPE_9__* PCOMMAND ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int HPT_ASSERT (int) ;
 int HPT_OSM_TIMEOUT ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int callout_reset (int *,int ,int ,TYPE_9__*) ;
 int hpt_timeout ;
 int ldm_queue_cmd (TYPE_9__*) ;
 int os_max_sg_descriptors ;
 int panic (char*) ;
 int timeout (int ,TYPE_9__*,int ) ;

__attribute__((used)) static void hpt_io_dmamap_callback(void *arg, bus_dma_segment_t *segs, int nsegs, int error)
{
 PCOMMAND pCmd = (PCOMMAND)arg;
 POS_CMDEXT ext = (POS_CMDEXT)pCmd->priv;
 PSG psg = pCmd->psg;
 int idx;

 HPT_ASSERT(pCmd->flags.physical_sg);

 if (error)
  panic("busdma error");

 HPT_ASSERT(nsegs<=os_max_sg_descriptors);

 if (nsegs != 0) {
  for (idx = 0; idx < nsegs; idx++, psg++) {
   psg->addr.bus = segs[idx].ds_addr;
   psg->size = segs[idx].ds_len;
   psg->eot = 0;
  }
  psg[-1].eot = 1;

  if (pCmd->flags.data_in) {
   bus_dmamap_sync(ext->vbus_ext->io_dmat, ext->dma_map,
       BUS_DMASYNC_PREREAD);
  }
  else if (pCmd->flags.data_out) {
   bus_dmamap_sync(ext->vbus_ext->io_dmat, ext->dma_map,
       BUS_DMASYNC_PREWRITE);
  }
 }



 ext->ccb->ccb_h.timeout_ch = timeout(hpt_timeout, pCmd, HPT_OSM_TIMEOUT);

 ldm_queue_cmd(pCmd);
}
