
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;


 scalar_t__ EVDEV_RCPT_HW_MOUSE ;
 int EV_KEY ;
 int EV_REL ;
 int EV_SYN ;
 int REL_HWHEEL ;
 int REL_WHEEL ;
 int REL_X ;
 int REL_Y ;
 int SYN_REPORT ;
 int assert (int) ;
 int * mbuttons ;
 size_t nitems (int *) ;
 scalar_t__ uinput_get_rcpt_mask () ;
 scalar_t__ uinput_write_event (scalar_t__,int ,int ,int) ;

int32_t
uinput_rep_mouse(int32_t fd, int32_t x, int32_t y, int32_t z, int32_t t,
    int32_t buttons, int32_t obuttons)
{
 size_t i;
 int32_t rcpt_mask, mask;

 assert(fd >= 0);

 rcpt_mask = uinput_get_rcpt_mask();
 if (!(rcpt_mask & EVDEV_RCPT_HW_MOUSE))
  return (0);

 if ((x != 0 && uinput_write_event(fd, EV_REL, REL_X, x) < 0) ||
     (y != 0 && uinput_write_event(fd, EV_REL, REL_Y, y) < 0) ||
     (z != 0 && uinput_write_event(fd, EV_REL, REL_WHEEL, -z) < 0) ||
     (t != 0 && uinput_write_event(fd, EV_REL, REL_HWHEEL, t) < 0))
  return (-1);

 for (i = 0; i < nitems(mbuttons); i++) {
  mask = 1 << i;
  if ((buttons & mask) == (obuttons & mask))
   continue;
  if (uinput_write_event(fd, EV_KEY, mbuttons[i],
      (buttons & mask) != 0) < 0)
   return (-1);
 }

 if (uinput_write_event(fd, EV_SYN, SYN_REPORT, 0) < 0)
  return (-1);

 return (0);
}
