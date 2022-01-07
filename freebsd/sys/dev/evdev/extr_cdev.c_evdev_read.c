
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio {int uio_resid; TYPE_1__* uio_td; } ;
struct input_event {int dummy; } ;
struct evdev_client {int ec_blocked; size_t ec_buffer_head; int ec_buffer_size; int * ec_buffer; int ec_buffer_mtx; scalar_t__ ec_revoked; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int td_tid; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ EVDEV_CLIENT_EMPTYQ (struct evdev_client*) ;
 int EVDEV_CLIENT_LOCKQ (struct evdev_client*) ;
 int EVDEV_CLIENT_UNLOCKQ (struct evdev_client*) ;
 int EWOULDBLOCK ;
 int O_NONBLOCK ;
 int PCATCH ;
 int debugf (struct evdev_client*,char*,int,int ) ;
 int devfs_get_cdevpriv (void**) ;
 int memcpy (struct input_event*,int *,int) ;
 int mtx_sleep (struct evdev_client*,int *,int ,char*,int ) ;
 int uiomove (struct input_event*,int,struct uio*) ;

__attribute__((used)) static int
evdev_read(struct cdev *dev, struct uio *uio, int ioflag)
{
 struct evdev_client *client;
 struct input_event event;
 int ret = 0;
 int remaining;

 ret = devfs_get_cdevpriv((void **)&client);
 if (ret != 0)
  return (ret);

 debugf(client, "read %zd bytes by thread %d", uio->uio_resid,
     uio->uio_td->td_tid);

 if (client->ec_revoked)
  return (ENODEV);


 if (uio->uio_resid != 0 && uio->uio_resid < sizeof(struct input_event))
  return (EINVAL);

 remaining = uio->uio_resid / sizeof(struct input_event);

 EVDEV_CLIENT_LOCKQ(client);

 if (EVDEV_CLIENT_EMPTYQ(client)) {
  if (ioflag & O_NONBLOCK)
   ret = EWOULDBLOCK;
  else {
   if (remaining != 0) {
    client->ec_blocked = 1;
    ret = mtx_sleep(client, &client->ec_buffer_mtx,
        PCATCH, "evread", 0);
   }
  }
 }

 while (ret == 0 && !EVDEV_CLIENT_EMPTYQ(client) && remaining > 0) {
  memcpy(&event, &client->ec_buffer[client->ec_buffer_head],
      sizeof(struct input_event));
  client->ec_buffer_head =
      (client->ec_buffer_head + 1) % client->ec_buffer_size;
  remaining--;

  EVDEV_CLIENT_UNLOCKQ(client);
  ret = uiomove(&event, sizeof(struct input_event), uio);
  EVDEV_CLIENT_LOCKQ(client);
 }

 EVDEV_CLIENT_UNLOCKQ(client);

 return (ret);
}
