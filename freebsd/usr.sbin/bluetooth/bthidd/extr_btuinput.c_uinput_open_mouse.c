
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
typedef TYPE_1__* hid_device_p ;
typedef int bdaddr_p ;
struct TYPE_4__ {scalar_t__ has_hwheel; scalar_t__ has_wheel; } ;


 int EV_KEY ;
 int EV_REL ;
 int EV_SYN ;
 int INPUT_PROP_POINTER ;
 int REL_HWHEEL ;
 int REL_WHEEL ;
 int REL_X ;
 int REL_Y ;
 int UI_DEV_CREATE ;
 int UI_SET_EVBIT ;
 int UI_SET_KEYBIT ;
 int UI_SET_PROPBIT ;
 int UI_SET_RELBIT ;
 int assert (int ) ;
 int close (scalar_t__) ;
 scalar_t__ ioctl (scalar_t__,int ,...) ;
 int * mbuttons ;
 size_t nitems (int *) ;
 scalar_t__ uinput_open_common (TYPE_1__* const,int ,char*) ;

int32_t
uinput_open_mouse(hid_device_p const p, bdaddr_p local)
{
 size_t i;
 int32_t fd;

 assert(p != ((void*)0));

 if ((fd = uinput_open_common(p, local, "Bluetooth Mouse")) < 0)
  goto bail_out;


 if (ioctl(fd, UI_SET_EVBIT, EV_SYN) < 0 ||
     ioctl(fd, UI_SET_EVBIT, EV_KEY) < 0 ||
     ioctl(fd, UI_SET_EVBIT, EV_REL) < 0 ||
     ioctl(fd, UI_SET_RELBIT, REL_X) < 0 ||
     ioctl(fd, UI_SET_RELBIT, REL_Y) < 0 ||
     (p->has_wheel && ioctl(fd, UI_SET_RELBIT, REL_WHEEL) < 0) ||
     (p->has_hwheel && ioctl(fd, UI_SET_RELBIT, REL_HWHEEL) < 0) ||
     ioctl(fd, UI_SET_PROPBIT, INPUT_PROP_POINTER) < 0)
  goto bail_out;


 for (i = 0; i < nitems(mbuttons); i++)
  if (ioctl(fd, UI_SET_KEYBIT, mbuttons[i]) < 0)
   goto bail_out;

 if (ioctl(fd, UI_DEV_CREATE) >= 0)
  return (fd);

bail_out:
 if (fd >= 0)
  close(fd);
 return (-1);
}
