
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int target_id; scalar_t__ target_lun; int status; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct fsl_sata_channel {int dummy; } ;


 int CAM_LUN_INVALID ;
 int CAM_TID_INVALID ;
 int fsl_sata_done (struct fsl_sata_channel*,union ccb*) ;

__attribute__((used)) static int
fsl_sata_check_ids(struct fsl_sata_channel *ch, union ccb *ccb)
{

 if (ccb->ccb_h.target_id > 15) {
  ccb->ccb_h.status = CAM_TID_INVALID;
  fsl_sata_done(ch, ccb);
  return (-1);
 }
 if (ccb->ccb_h.target_lun != 0) {
  ccb->ccb_h.status = CAM_LUN_INVALID;
  fsl_sata_done(ch, ccb);
  return (-1);
 }
 return (0);
}
