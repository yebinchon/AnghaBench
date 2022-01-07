
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio {int uio_resid; TYPE_1__* uio_td; } ;
struct uinput_user_dev {int value; int code; int type; } ;
struct uinput_cdev_state {scalar_t__ ucs_state; int ucs_evdev; } ;
struct input_event {int value; int code; int type; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int td_tid; } ;


 int EINVAL ;
 int UINPUT_LOCK (struct uinput_cdev_state*) ;
 scalar_t__ UINPUT_RUNNING ;
 int UINPUT_UNLOCK (struct uinput_cdev_state*) ;
 int debugf (struct uinput_cdev_state*,char*,...) ;
 int devfs_get_cdevpriv (void**) ;
 int evdev_push_event (int ,int ,int ,int ) ;
 int uinput_setup_provider (struct uinput_cdev_state*,struct uinput_user_dev*) ;
 int uiomove (struct uinput_user_dev*,int,struct uio*) ;

__attribute__((used)) static int
uinput_write(struct cdev *dev, struct uio *uio, int ioflag)
{
 struct uinput_cdev_state *state;
 struct uinput_user_dev userdev;
 struct input_event event;
 int ret = 0;

 ret = devfs_get_cdevpriv((void **)&state);
 if (ret != 0)
  return (ret);

 debugf(state, "write %zd bytes by thread %d", uio->uio_resid,
     uio->uio_td->td_tid);

 UINPUT_LOCK(state);

 if (state->ucs_state != UINPUT_RUNNING) {

  if (uio->uio_resid != sizeof(struct uinput_user_dev)) {
   debugf(state, "write size not multiple of "
       "struct uinput_user_dev size");
   ret = EINVAL;
  } else {
   ret = uiomove(&userdev, sizeof(struct uinput_user_dev),
       uio);
   if (ret == 0)
    uinput_setup_provider(state, &userdev);
  }
 } else {

  if (uio->uio_resid % sizeof(struct input_event) != 0) {
   debugf(state, "write size not multiple of "
       "struct input_event size");
   ret = EINVAL;
  }

  while (ret == 0 && uio->uio_resid > 0) {
   uiomove(&event, sizeof(struct input_event), uio);
   ret = evdev_push_event(state->ucs_evdev, event.type,
       event.code, event.value);
  }
 }

 UINPUT_UNLOCK(state);

 return (ret);
}
