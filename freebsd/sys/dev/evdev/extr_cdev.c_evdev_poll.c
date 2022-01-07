
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_tid; } ;
struct evdev_client {int ec_selected; int ec_selp; scalar_t__ ec_revoked; } ;
struct cdev {int dummy; } ;


 int EVDEV_CLIENT_EMPTYQ (struct evdev_client*) ;
 int EVDEV_CLIENT_LOCKQ (struct evdev_client*) ;
 int EVDEV_CLIENT_UNLOCKQ (struct evdev_client*) ;
 int POLLHUP ;
 int POLLIN ;
 int POLLNVAL ;
 int POLLRDNORM ;
 int debugf (struct evdev_client*,char*,int ) ;
 int devfs_get_cdevpriv (void**) ;
 int selrecord (struct thread*,int *) ;

__attribute__((used)) static int
evdev_poll(struct cdev *dev, int events, struct thread *td)
{
 struct evdev_client *client;
 int ret;
 int revents = 0;

 ret = devfs_get_cdevpriv((void **)&client);
 if (ret != 0)
  return (POLLNVAL);

 debugf(client, "poll by thread %d", td->td_tid);

 if (client->ec_revoked)
  return (POLLHUP);

 if (events & (POLLIN | POLLRDNORM)) {
  EVDEV_CLIENT_LOCKQ(client);
  if (!EVDEV_CLIENT_EMPTYQ(client))
   revents = events & (POLLIN | POLLRDNORM);
  else {
   client->ec_selected = 1;
   selrecord(td, &client->ec_selp);
  }
  EVDEV_CLIENT_UNLOCKQ(client);
 }

 return (revents);
}
