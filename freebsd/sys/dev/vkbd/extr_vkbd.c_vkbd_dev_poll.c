
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ cc; int q; } ;
struct TYPE_5__ {int ks_flags; int ks_wsel; int ks_rsel; TYPE_2__ ks_inq; } ;
typedef TYPE_1__ vkbd_state_t ;
typedef TYPE_2__ vkbd_queue_t ;
struct thread {int dummy; } ;
struct cdev {scalar_t__ si_drv1; } ;


 int ENXIO ;
 int POLLIN ;
 int POLLOUT ;
 int POLLRDNORM ;
 int POLLWRNORM ;
 int STATUS ;
 int VKBD_LOCK (TYPE_1__*) ;
 int VKBD_UNLOCK (TYPE_1__*) ;
 scalar_t__ nitems (int ) ;
 int selrecord (struct thread*,int *) ;

__attribute__((used)) static int
vkbd_dev_poll(struct cdev *dev, int events, struct thread *td)
{
 vkbd_state_t *state = (vkbd_state_t *) dev->si_drv1;
 vkbd_queue_t *q = ((void*)0);
 int revents = 0;

 if (state == ((void*)0))
  return (ENXIO);

 VKBD_LOCK(state);

 q = &state->ks_inq;

 if (events & (POLLIN | POLLRDNORM)) {
  if (state->ks_flags & STATUS)
   revents |= events & (POLLIN | POLLRDNORM);
  else
   selrecord(td, &state->ks_rsel);
 }

 if (events & (POLLOUT | POLLWRNORM)) {
  if (q->cc < nitems(q->q))
   revents |= events & (POLLOUT | POLLWRNORM);
  else
   selrecord(td, &state->ks_wsel);
 }

 VKBD_UNLOCK(state);

 return (revents);
}
