
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {void* status; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct TYPE_10__ {scalar_t__ data_out; scalar_t__ data_in; } ;
struct TYPE_13__ {int Result; TYPE_2__ flags; int priv; } ;
struct TYPE_12__ {int dma_map; TYPE_3__* vbus_ext; int timeout; union ccb* ccb; } ;
struct TYPE_11__ {int io_dmat; } ;
typedef TYPE_4__* POS_CMDEXT ;
typedef TYPE_5__* PCOMMAND ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 void* CAM_BUSY ;
 void* CAM_DEV_NOT_THERE ;
 void* CAM_REQ_CMP ;
 void* CAM_REQ_INVALID ;
 void* CAM_SCSI_STATUS_ERROR ;
 void* CAM_SEL_TIMEOUT ;
 int KdPrint (char*) ;






 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int callout_stop (int *) ;
 int cmdext_put (TYPE_4__*) ;
 int ldm_free_cmds (TYPE_5__*) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void os_cmddone(PCOMMAND pCmd)
{
 POS_CMDEXT ext = (POS_CMDEXT)pCmd->priv;
 union ccb *ccb = ext->ccb;

 KdPrint(("os_cmddone(%p, %d)", pCmd, pCmd->Result));

 callout_stop(&ext->timeout);

 switch(pCmd->Result) {
 case 128:
  ccb->ccb_h.status = CAM_REQ_CMP;
  break;
 case 133:
  ccb->ccb_h.status = CAM_DEV_NOT_THERE;
  break;
 case 132:
  ccb->ccb_h.status = CAM_BUSY;
  break;
 case 131:
  ccb->ccb_h.status = CAM_REQ_INVALID;
  break;
 case 129:
  ccb->ccb_h.status = CAM_SEL_TIMEOUT;
  break;
 case 130:
  ccb->ccb_h.status = CAM_BUSY;
  break;
 default:
  ccb->ccb_h.status = CAM_SCSI_STATUS_ERROR;
  break;
 }

 if (pCmd->flags.data_in) {
  bus_dmamap_sync(ext->vbus_ext->io_dmat, ext->dma_map, BUS_DMASYNC_POSTREAD);
 }
 else if (pCmd->flags.data_out) {
  bus_dmamap_sync(ext->vbus_ext->io_dmat, ext->dma_map, BUS_DMASYNC_POSTWRITE);
 }

 bus_dmamap_unload(ext->vbus_ext->io_dmat, ext->dma_map);

 cmdext_put(ext);
 ldm_free_cmds(pCmd);
 xpt_done(ccb);
}
