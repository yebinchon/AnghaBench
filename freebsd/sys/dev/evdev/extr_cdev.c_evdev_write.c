
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio {int uio_resid; TYPE_1__* uio_td; } ;
struct input_event {int value; int code; int type; } ;
struct evdev_dev {int dummy; } ;
struct evdev_client {scalar_t__ ec_revoked; } ;
struct cdev {struct evdev_dev* si_drv1; } ;
struct TYPE_2__ {int td_tid; } ;


 int EINVAL ;
 int ENODEV ;
 int debugf (struct evdev_client*,char*,...) ;
 int devfs_get_cdevpriv (void**) ;
 int evdev_inject_event (struct evdev_dev*,int ,int ,int ) ;
 int uiomove (struct input_event*,int,struct uio*) ;

__attribute__((used)) static int
evdev_write(struct cdev *dev, struct uio *uio, int ioflag)
{
 struct evdev_dev *evdev = dev->si_drv1;
 struct evdev_client *client;
 struct input_event event;
 int ret = 0;

 ret = devfs_get_cdevpriv((void **)&client);
 if (ret != 0)
  return (ret);

 debugf(client, "write %zd bytes by thread %d", uio->uio_resid,
     uio->uio_td->td_tid);

 if (client->ec_revoked || evdev == ((void*)0))
  return (ENODEV);

 if (uio->uio_resid % sizeof(struct input_event) != 0) {
  debugf(client, "write size not multiple of input_event size");
  return (EINVAL);
 }

 while (uio->uio_resid > 0 && ret == 0) {
  ret = uiomove(&event, sizeof(struct input_event), uio);
  if (ret == 0)
   ret = evdev_inject_event(evdev, event.type, event.code,
       event.value);
 }

 return (ret);
}
