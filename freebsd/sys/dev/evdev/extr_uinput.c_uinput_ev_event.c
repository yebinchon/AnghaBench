
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct uinput_cdev_state {scalar_t__ ucs_state; } ;
struct evdev_dev {int dummy; } ;
typedef int int32_t ;


 scalar_t__ EV_LED ;
 int UINPUT_LOCK (struct uinput_cdev_state*) ;
 scalar_t__ UINPUT_RUNNING ;
 int UINPUT_UNLOCK (struct uinput_cdev_state*) ;
 struct uinput_cdev_state* evdev_get_softc (struct evdev_dev*) ;
 int evdev_push_event (struct evdev_dev*,scalar_t__,scalar_t__,int ) ;
 int uinput_enqueue_event (struct uinput_cdev_state*,scalar_t__,scalar_t__,int ) ;
 int uinput_notify (struct uinput_cdev_state*) ;

__attribute__((used)) static void
uinput_ev_event(struct evdev_dev *evdev, uint16_t type, uint16_t code,
    int32_t value)
{
 struct uinput_cdev_state *state = evdev_get_softc(evdev);

 if (type == EV_LED)
  evdev_push_event(evdev, type, code, value);

 UINPUT_LOCK(state);
 if (state->ucs_state == UINPUT_RUNNING) {
  uinput_enqueue_event(state, type, code, value);
  uinput_notify(state);
 }
 UINPUT_UNLOCK(state);
}
