
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct thread {int dummy; } ;
struct nvme_pt_command {int dummy; } ;
struct nvme_namespace {int id; struct nvme_controller* ctrlr; } ;
struct nvme_get_nsid {int nsid; int cdev; } ;
struct nvme_controller {int dev; } ;
struct cdev {struct nvme_namespace* si_drv1; } ;
typedef int off_t ;
typedef scalar_t__ caddr_t ;




 int ENOTTY ;




 int device_get_nameunit (int ) ;
 int nvme_ctrlr_passthrough_cmd (struct nvme_controller*,struct nvme_pt_command*,int ,int,int ) ;
 int nvme_ns_get_sector_size (struct nvme_namespace*) ;
 int nvme_ns_get_size (struct nvme_namespace*) ;
 int nvme_ns_test (struct nvme_namespace*,int,scalar_t__) ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static int
nvme_ns_ioctl(struct cdev *cdev, u_long cmd, caddr_t arg, int flag,
    struct thread *td)
{
 struct nvme_namespace *ns;
 struct nvme_controller *ctrlr;
 struct nvme_pt_command *pt;

 ns = cdev->si_drv1;
 ctrlr = ns->ctrlr;

 switch (cmd) {
 case 129:
 case 131:
  nvme_ns_test(ns, cmd, arg);
  break;
 case 128:
  pt = (struct nvme_pt_command *)arg;
  return (nvme_ctrlr_passthrough_cmd(ctrlr, pt, ns->id,
      1 , 0 ));
 case 130:
 {
  struct nvme_get_nsid *gnsid = (struct nvme_get_nsid *)arg;
  strncpy(gnsid->cdev, device_get_nameunit(ctrlr->dev),
      sizeof(gnsid->cdev));
  gnsid->nsid = ns->id;
  break;
 }
 case 133:
  *(off_t *)arg = (off_t)nvme_ns_get_size(ns);
  break;
 case 132:
  *(u_int *)arg = nvme_ns_get_sector_size(ns);
  break;
 default:
  return (ENOTTY);
 }

 return (0);
}
