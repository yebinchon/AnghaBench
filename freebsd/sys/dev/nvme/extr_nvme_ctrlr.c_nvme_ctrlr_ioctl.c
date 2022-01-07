
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct thread {int dummy; } ;
struct TYPE_2__ {int nsid; } ;
struct nvme_pt_command {TYPE_1__ cmd; } ;
struct nvme_get_nsid {int nsid; int cdev; } ;
struct nvme_controller {int dev; } ;
struct cdev {struct nvme_controller* si_drv1; } ;
typedef scalar_t__ caddr_t ;


 int ENOTTY ;



 int device_get_nameunit (int ) ;
 int le32toh (int ) ;
 int nvme_ctrlr_passthrough_cmd (struct nvme_controller*,struct nvme_pt_command*,int ,int,int) ;
 int nvme_ctrlr_reset (struct nvme_controller*) ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static int
nvme_ctrlr_ioctl(struct cdev *cdev, u_long cmd, caddr_t arg, int flag,
    struct thread *td)
{
 struct nvme_controller *ctrlr;
 struct nvme_pt_command *pt;

 ctrlr = cdev->si_drv1;

 switch (cmd) {
 case 128:
  nvme_ctrlr_reset(ctrlr);
  break;
 case 129:
  pt = (struct nvme_pt_command *)arg;
  return (nvme_ctrlr_passthrough_cmd(ctrlr, pt, le32toh(pt->cmd.nsid),
      1 , 1 ));
 case 130:
 {
  struct nvme_get_nsid *gnsid = (struct nvme_get_nsid *)arg;
  strncpy(gnsid->cdev, device_get_nameunit(ctrlr->dev),
      sizeof(gnsid->cdev));
  gnsid->nsid = 0;
  break;
 }
 default:
  return (ENOTTY);
 }

 return (0);
}
