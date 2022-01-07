
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uinput_cdev_state {int ucs_selected; int ucs_selp; } ;
struct thread {int td_tid; } ;
struct cdev {int dummy; } ;


 int POLLIN ;
 int POLLNVAL ;
 int POLLOUT ;
 int POLLRDNORM ;
 int POLLWRNORM ;
 int UINPUT_EMPTYQ (struct uinput_cdev_state*) ;
 int UINPUT_LOCK (struct uinput_cdev_state*) ;
 int UINPUT_UNLOCK (struct uinput_cdev_state*) ;
 int debugf (struct uinput_cdev_state*,char*,int ) ;
 scalar_t__ devfs_get_cdevpriv (void**) ;
 int selrecord (struct thread*,int *) ;

__attribute__((used)) static int
uinput_poll(struct cdev *dev, int events, struct thread *td)
{
 struct uinput_cdev_state *state;
 int revents = 0;

 if (devfs_get_cdevpriv((void **)&state) != 0)
  return (POLLNVAL);

 debugf(state, "poll by thread %d", td->td_tid);


 if (events & (POLLOUT | POLLWRNORM))
  revents |= (events & (POLLOUT | POLLWRNORM));

 if (events & (POLLIN | POLLRDNORM)) {
  UINPUT_LOCK(state);
  if (!UINPUT_EMPTYQ(state))
   revents = events & (POLLIN | POLLRDNORM);
  else {
   state->ucs_selected = 1;
   selrecord(td, &state->ucs_selp);
  }
  UINPUT_UNLOCK(state);
 }

 return (revents);
}
