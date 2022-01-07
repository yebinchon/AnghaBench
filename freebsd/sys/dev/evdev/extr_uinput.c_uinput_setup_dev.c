
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uinput_cdev_state {int ucs_state; int ucs_evdev; } ;
struct input_id {int version; int product; int vendor; int bustype; } ;


 int EINVAL ;
 int UINPUT_CONFIGURED ;
 int evdev_set_id (int ,int ,int ,int ,int ) ;
 int evdev_set_name (int ,char*) ;

__attribute__((used)) static int
uinput_setup_dev(struct uinput_cdev_state *state, struct input_id *id,
    char *name, uint32_t ff_effects_max)
{

 if (name[0] == 0)
  return (EINVAL);

 evdev_set_name(state->ucs_evdev, name);
 evdev_set_id(state->ucs_evdev, id->bustype, id->vendor, id->product,
     id->version);
 state->ucs_state = UINPUT_CONFIGURED;

 return (0);
}
