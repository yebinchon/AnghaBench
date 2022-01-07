
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {int flags; void* status; } ;
struct TYPE_13__ {int* cdb_ptr; int* cdb_bytes; } ;
struct TYPE_15__ {int sense_data; TYPE_1__ cdb_io; } ;
union ccb {TYPE_4__ ccb_h; TYPE_3__ csio; } ;
struct TYPE_17__ {scalar_t__ data_out; scalar_t__ data_in; } ;
struct TYPE_19__ {int bSectorCountReg; int bLbaLowReg; int bLbaMidReg; int bLbaHighReg; int bFeaturesReg; int bDriveHeadReg; int bCommandReg; } ;
struct TYPE_14__ {TYPE_7__ Passthrough; } ;
struct TYPE_21__ {int Result; TYPE_5__ flags; TYPE_2__ uCmd; int priv; } ;
struct TYPE_20__ {int dma_map; TYPE_6__* vbus_ext; int timeout; union ccb* ccb; } ;
struct TYPE_18__ {int io_dmat; } ;
typedef TYPE_7__ PassthroughCmd ;
typedef TYPE_8__* POS_CMDEXT ;
typedef TYPE_9__* PCOMMAND ;
typedef int HPT_U8 ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 void* CAM_BUSY ;
 int CAM_CDB_POINTER ;
 void* CAM_DEV_NOT_THERE ;
 void* CAM_REQ_CMP ;
 void* CAM_REQ_INVALID ;
 void* CAM_SCSI_STATUS_ERROR ;
 void* CAM_SEL_TIMEOUT ;
 int KdPrint (char*) ;






 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int callout_stop (int *) ;
 int cmdext_put (TYPE_8__*) ;
 int ldm_free_cmds (TYPE_9__*) ;
 int memset (int *,int ,int) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void os_cmddone(PCOMMAND pCmd)
{
 POS_CMDEXT ext = (POS_CMDEXT)pCmd->priv;
 union ccb *ccb = ext->ccb;
 HPT_U8 *cdb;

 if (ccb->ccb_h.flags & CAM_CDB_POINTER)
  cdb = ccb->csio.cdb_io.cdb_ptr;
 else
  cdb = ccb->csio.cdb_io.cdb_bytes;

 KdPrint(("os_cmddone(%p, %d)", pCmd, pCmd->Result));

 callout_stop(&ext->timeout);
 switch(cdb[0]) {
  case 0x85:
  case 0xA1:
  {
   PassthroughCmd *passthru = &pCmd->uCmd.Passthrough;
   HPT_U8 *sense_buffer = (HPT_U8 *)&ccb->csio.sense_data;
   memset(&ccb->csio.sense_data, 0,sizeof(ccb->csio.sense_data));

   sense_buffer[0] = 0x72;
   sense_buffer[7] = 14;

   sense_buffer[8] = 0x9;
   sense_buffer[9] = 0xc;
   sense_buffer[11] = (HPT_U8)passthru->bFeaturesReg;
   sense_buffer[13] = (HPT_U8)passthru->bSectorCountReg;
   sense_buffer[15] = (HPT_U8)passthru->bLbaLowReg;
   sense_buffer[17] = (HPT_U8)passthru->bLbaMidReg;
   sense_buffer[19] = (HPT_U8)passthru->bLbaHighReg;

   if ((cdb[0] == 0x85) && (cdb[1] & 0x1))
   {
    sense_buffer[10] = 1;
    sense_buffer[12] = (HPT_U8)(passthru->bSectorCountReg >> 8);
    sense_buffer[14] = (HPT_U8)(passthru->bLbaLowReg >> 8);
    sense_buffer[16] = (HPT_U8)(passthru->bLbaMidReg >> 8);
    sense_buffer[18] = (HPT_U8)(passthru->bLbaHighReg >> 8);
   }

   sense_buffer[20] = (HPT_U8)passthru->bDriveHeadReg;
   sense_buffer[21] = (HPT_U8)passthru->bCommandReg;
   KdPrint(("sts 0x%x err 0x%x low 0x%x mid 0x%x hig 0x%x dh 0x%x sc 0x%x",
      passthru->bCommandReg,
      passthru->bFeaturesReg,
      passthru->bLbaLowReg,
      passthru->bLbaMidReg,
      passthru->bLbaHighReg,
      passthru->bDriveHeadReg,
      passthru->bSectorCountReg));
   KdPrint(("result:0x%x,bFeaturesReg:0x%04x,bSectorCountReg:0x%04x,LBA:0x%04x%04x%04x ",
    pCmd->Result,passthru->bFeaturesReg,passthru->bSectorCountReg,
    passthru->bLbaHighReg,passthru->bLbaMidReg,passthru->bLbaLowReg));
  }
  default:
   break;
 }

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
