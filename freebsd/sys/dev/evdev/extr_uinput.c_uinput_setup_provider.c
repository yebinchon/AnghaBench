
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uinput_user_dev {int * absflat; int * absfuzz; int * absmax; int * absmin; int ff_effects_max; int name; int id; } ;
struct uinput_cdev_state {TYPE_1__* ucs_evdev; } ;
struct input_absinfo {int flat; int fuzz; int maximum; int minimum; } ;
struct TYPE_2__ {int ev_abs_flags; } ;


 int ABS_CNT ;
 int bit_test (int ,int) ;
 int bzero (struct input_absinfo*,int) ;
 int debugf (struct uinput_cdev_state*,char*,struct uinput_user_dev*) ;
 int evdev_set_absinfo (TYPE_1__*,int,struct input_absinfo*) ;
 int uinput_setup_dev (struct uinput_cdev_state*,int *,int ,int ) ;

__attribute__((used)) static int
uinput_setup_provider(struct uinput_cdev_state *state,
    struct uinput_user_dev *udev)
{
 struct input_absinfo absinfo;
 int i, ret;

 debugf(state, "setup_provider called, udev=%p", udev);

 ret = uinput_setup_dev(state, &udev->id, udev->name,
     udev->ff_effects_max);
 if (ret)
  return (ret);

 bzero(&absinfo, sizeof(struct input_absinfo));
 for (i = 0; i < ABS_CNT; i++) {
  if (!bit_test(state->ucs_evdev->ev_abs_flags, i))
   continue;

  absinfo.minimum = udev->absmin[i];
  absinfo.maximum = udev->absmax[i];
  absinfo.fuzz = udev->absfuzz[i];
  absinfo.flat = udev->absflat[i];
  evdev_set_absinfo(state->ucs_evdev, i, &absinfo);
 }

 return (0);
}
