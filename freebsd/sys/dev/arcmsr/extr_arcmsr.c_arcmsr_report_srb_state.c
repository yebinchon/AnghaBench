
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int16_t ;
struct TYPE_4__ {int DeviceStatus; } ;
struct CommandControlBlock {TYPE_3__* pccb; TYPE_1__ arcmsr_cdb; } ;
struct AdapterControlBlock {scalar_t__** devstate; int pci_unit; } ;
struct TYPE_5__ {int target_id; int target_lun; int status; } ;
struct TYPE_6__ {TYPE_2__ ccb_h; } ;





 scalar_t__ ARECA_RAID_GONE ;
 scalar_t__ ARECA_RAID_GOOD ;
 int CAM_DEV_NOT_THERE ;
 int CAM_REQ_CMP ;
 int CAM_UNCOR_PARITY ;
 scalar_t__ FALSE ;

 int arcmsr_report_sense_info (struct CommandControlBlock*) ;
 int arcmsr_srb_complete (struct CommandControlBlock*,int) ;
 int printf (char*,int,int,int,...) ;

__attribute__((used)) static void arcmsr_report_srb_state(struct AdapterControlBlock *acb, struct CommandControlBlock *srb, u_int16_t error)
{
 int target, lun;

 target = srb->pccb->ccb_h.target_id;
 lun = srb->pccb->ccb_h.target_lun;
 if(error == FALSE) {
  if(acb->devstate[target][lun] == ARECA_RAID_GONE) {
   acb->devstate[target][lun] = ARECA_RAID_GOOD;
  }
  srb->pccb->ccb_h.status |= CAM_REQ_CMP;
  arcmsr_srb_complete(srb, 1);
 } else {
  switch(srb->arcmsr_cdb.DeviceStatus) {
  case 129: {
    if(acb->devstate[target][lun] == ARECA_RAID_GOOD) {
     printf( "arcmsr%d: Target=%x, Lun=%x, selection timeout, raid volume was lost\n", acb->pci_unit, target, lun);
    }
    acb->devstate[target][lun] = ARECA_RAID_GONE;
    srb->pccb->ccb_h.status |= CAM_DEV_NOT_THERE;
    arcmsr_srb_complete(srb, 1);
   }
   break;
  case 131:
  case 130: {
    acb->devstate[target][lun] = ARECA_RAID_GONE;
    srb->pccb->ccb_h.status |= CAM_DEV_NOT_THERE;
    arcmsr_srb_complete(srb, 1);
   }
   break;
  case 128: {
    acb->devstate[target][lun] = ARECA_RAID_GOOD;
    arcmsr_report_sense_info(srb);
    arcmsr_srb_complete(srb, 1);
   }
   break;
  default:
   printf("arcmsr%d: scsi id=%d lun=%d isr got command error done,but got unknown DeviceStatus=0x%x \n"
     , acb->pci_unit, target, lun ,srb->arcmsr_cdb.DeviceStatus);
   acb->devstate[target][lun] = ARECA_RAID_GONE;
   srb->pccb->ccb_h.status |= CAM_UNCOR_PARITY;

   arcmsr_srb_complete(srb, 1);
   break;
  }
 }
}
