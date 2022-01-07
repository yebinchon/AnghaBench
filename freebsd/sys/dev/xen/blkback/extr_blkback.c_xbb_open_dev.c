
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * csw; int dev_ref; struct cdev* cdev; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;
struct xbb_softc {int dev_name; int dev; int media_size; int sector_size; TYPE_3__* vn; TYPE_2__ backend; int dispatch_io; int device_type; } ;
struct vattr {int dummy; } ;
struct cdevsw {int (* d_ioctl ) (struct cdev*,int ,int ,int ,int ) ;} ;
struct cdev {struct cdevsw* si_devsw; } ;
typedef int caddr_t ;
struct TYPE_6__ {struct cdev* v_rdev; } ;


 int DIOCGMEDIASIZE ;
 int DIOCGSECTORSIZE ;
 int ENODEV ;
 int FREAD ;
 int NOCRED ;
 int VOP_GETATTR (TYPE_3__*,struct vattr*,int ) ;
 int XBB_TYPE_DISK ;
 int curthread ;
 int * dev_refthread (struct cdev*,int *) ;
 int panic (char*) ;
 int stub1 (struct cdev*,int ,int ,int ,int ) ;
 int stub2 (struct cdev*,int ,int ,int ,int ) ;
 int xbb_dispatch_dev ;
 int xenbus_dev_fatal (int ,int,char*,int ) ;

__attribute__((used)) static int
xbb_open_dev(struct xbb_softc *xbb)
{
 struct vattr vattr;
 struct cdev *dev;
 struct cdevsw *devsw;
 int error;

 xbb->device_type = XBB_TYPE_DISK;
 xbb->dispatch_io = xbb_dispatch_dev;
 xbb->backend.dev.cdev = xbb->vn->v_rdev;
 xbb->backend.dev.csw = dev_refthread(xbb->backend.dev.cdev,
          &xbb->backend.dev.dev_ref);
 if (xbb->backend.dev.csw == ((void*)0))
  panic("Unable to retrieve device switch");

 error = VOP_GETATTR(xbb->vn, &vattr, NOCRED);
 if (error) {
  xenbus_dev_fatal(xbb->dev, error, "error getting "
     "vnode attributes for device %s",
     xbb->dev_name);
  return (error);
 }


 dev = xbb->vn->v_rdev;
 devsw = dev->si_devsw;
 if (!devsw->d_ioctl) {
  xenbus_dev_fatal(xbb->dev, ENODEV, "no d_ioctl for "
     "device %s!", xbb->dev_name);
  return (ENODEV);
 }

 error = devsw->d_ioctl(dev, DIOCGSECTORSIZE,
          (caddr_t)&xbb->sector_size, FREAD,
          curthread);
 if (error) {
  xenbus_dev_fatal(xbb->dev, error,
     "error calling ioctl DIOCGSECTORSIZE "
     "for device %s", xbb->dev_name);
  return (error);
 }

 error = devsw->d_ioctl(dev, DIOCGMEDIASIZE,
          (caddr_t)&xbb->media_size, FREAD,
          curthread);
 if (error) {
  xenbus_dev_fatal(xbb->dev, error,
     "error calling ioctl DIOCGMEDIASIZE "
     "for device %s", xbb->dev_name);
  return (error);
 }

 return (0);
}
