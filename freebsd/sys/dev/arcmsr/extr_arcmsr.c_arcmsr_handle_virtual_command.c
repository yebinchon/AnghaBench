
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* data_ptr; int scsi_status; } ;
struct TYPE_3__ {int status; scalar_t__ target_lun; } ;
union ccb {TYPE_2__ csio; TYPE_1__ ccb_h; } ;
struct AdapterControlBlock {int dummy; } ;
typedef int inqdata ;


 int CAM_DEV_NOT_THERE ;
 int CAM_REQ_CMP ;
 int CAM_SCSI_STATUS_ERROR ;


 int SCSI_STATUS_CHECK_COND ;
 unsigned char T_PROCESSOR ;

 int arcmsr_iop_message_xfer (struct AdapterControlBlock*,union ccb*) ;
 int memcpy (char*,unsigned char*,int) ;
 int* scsiio_cdb_ptr (TYPE_2__*) ;
 int strncpy (unsigned char*,char*,int) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void arcmsr_handle_virtual_command(struct AdapterControlBlock *acb,
  union ccb *pccb)
{
 if (pccb->ccb_h.target_lun) {
  pccb->ccb_h.status |= CAM_DEV_NOT_THERE;
  xpt_done(pccb);
  return;
 }
 pccb->ccb_h.status |= CAM_REQ_CMP;
 switch (scsiio_cdb_ptr(&pccb->csio)[0]) {
 case 130: {
  unsigned char inqdata[36];
  char *buffer = pccb->csio.data_ptr;

  inqdata[0] = T_PROCESSOR;
  inqdata[1] = 0;
  inqdata[2] = 0;
  inqdata[3] = 0;
  inqdata[4] = 31;
  inqdata[5] = 0;
  inqdata[6] = 0;
  inqdata[7] = 0;
  strncpy(&inqdata[8], "Areca   ", 8);
  strncpy(&inqdata[16], "RAID controller ", 16);
  strncpy(&inqdata[32], "R001", 4);
  memcpy(buffer, inqdata, sizeof(inqdata));
  xpt_done(pccb);
 }
 break;
 case 128:
 case 129: {
  if (arcmsr_iop_message_xfer(acb, pccb)) {
   pccb->ccb_h.status |= CAM_SCSI_STATUS_ERROR;
   pccb->csio.scsi_status = SCSI_STATUS_CHECK_COND;
  }
  xpt_done(pccb);
 }
 break;
 default:
  xpt_done(pccb);
 }
}
