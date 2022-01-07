
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct input_event {int type; int value; int code; } ;
typedef int int32_t ;
typedef int ie ;
typedef TYPE_1__* bthid_session_p ;
struct TYPE_3__ {scalar_t__ vkbd; } ;




 int KDGETLED ;
 int KDSETLED ;
 int assert (int) ;
 int ioctl (scalar_t__,int ,...) ;
 int * led_codes ;
 int memcpy (struct input_event*,int *,int) ;
 size_t nitems (int *) ;

int32_t
uinput_kbd_status_changed(bthid_session_p s, uint8_t *data, int32_t len)
{
 struct input_event ie;
 int32_t leds, oleds;
 size_t i;

 assert(s != ((void*)0));
 assert(s->vkbd >= 0);
 assert(len == sizeof(struct input_event));

 memcpy(&ie, data, sizeof(ie));
 switch (ie.type) {
 case 129:
  ioctl(s->vkbd, KDGETLED, &oleds);
  leds = oleds;
  for (i = 0; i < nitems(led_codes); i++) {
   if (led_codes[i] == ie.code) {
    if (ie.value)
     leds |= 1 << i;
    else
     leds &= ~(1 << i);
    if (leds != oleds)
     ioctl(s->vkbd, KDSETLED, leds);
    break;
   }
  }
  break;
 case 128:

 default:
  break;
 }

 return (0);
}
