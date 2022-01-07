
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio {int uio_resid; TYPE_1__* uio_td; } ;
struct uinput_cdev_state {scalar_t__ ucs_state; int ucs_blocked; size_t ucs_buffer_head; struct input_event* ucs_buffer; int ucs_lock; } ;
struct input_event {int dummy; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int td_tid; } ;


 int EINVAL ;
 int EWOULDBLOCK ;
 int O_NONBLOCK ;
 int PCATCH ;
 int UINPUT_BUFFER_SIZE ;
 scalar_t__ UINPUT_EMPTYQ (struct uinput_cdev_state*) ;
 int UINPUT_LOCK (struct uinput_cdev_state*) ;
 scalar_t__ UINPUT_RUNNING ;
 int UINPUT_UNLOCK (struct uinput_cdev_state*) ;
 int debugf (struct uinput_cdev_state*,char*,int,int ) ;
 int devfs_get_cdevpriv (void**) ;
 int sx_sleep (struct uinput_cdev_state*,int *,int ,char*,int ) ;
 int uiomove (struct input_event*,int,struct uio*) ;

__attribute__((used)) static int
uinput_read(struct cdev *dev, struct uio *uio, int ioflag)
{
 struct uinput_cdev_state *state;
 struct input_event *event;
 int remaining, ret;

 ret = devfs_get_cdevpriv((void **)&state);
 if (ret != 0)
  return (ret);

 debugf(state, "read %zd bytes by thread %d", uio->uio_resid,
     uio->uio_td->td_tid);


 if (uio->uio_resid != 0 && uio->uio_resid < sizeof(struct input_event))
  return (EINVAL);

 remaining = uio->uio_resid / sizeof(struct input_event);

 UINPUT_LOCK(state);

 if (state->ucs_state != UINPUT_RUNNING)
  ret = EINVAL;

 if (ret == 0 && UINPUT_EMPTYQ(state)) {
  if (ioflag & O_NONBLOCK)
   ret = EWOULDBLOCK;
  else {
   if (remaining != 0) {
    state->ucs_blocked = 1;
    ret = sx_sleep(state, &state->ucs_lock,
        PCATCH, "uiread", 0);
   }
  }
 }

 while (ret == 0 && !UINPUT_EMPTYQ(state) && remaining > 0) {
  event = &state->ucs_buffer[state->ucs_buffer_head];
  state->ucs_buffer_head = (state->ucs_buffer_head + 1) %
      UINPUT_BUFFER_SIZE;
  remaining--;
  ret = uiomove(event, sizeof(struct input_event), uio);
 }

 UINPUT_UNLOCK(state);

 return (ret);
}
