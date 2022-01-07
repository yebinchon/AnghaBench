
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_5__ {int kb_delay2; int kb_delay1; } ;
typedef TYPE_1__ keyboard_t ;
typedef int int32_t ;
typedef int caddr_t ;


 int CLKED ;
 scalar_t__ EV_LED ;
 scalar_t__ EV_REP ;
 int KBD_LED_VAL (TYPE_1__*) ;
 int KDSETLED ;
 int KDSETREPEAT ;



 int NLKED ;
 scalar_t__ REP_DELAY ;
 scalar_t__ REP_PERIOD ;
 int SLKED ;
 int kbdd_ioctl (TYPE_1__*,int ,int ) ;

void
kbd_ev_event(keyboard_t *kbd, uint16_t type, uint16_t code, int32_t value)
{
 int delay[2], led = 0, leds, oleds;

 if (type == EV_LED) {
  leds = oleds = KBD_LED_VAL(kbd);
  switch (code) {
  case 130:
   led = CLKED;
   break;
  case 129:
   led = NLKED;
   break;
  case 128:
   led = SLKED;
   break;
  }

  if (value)
   leds |= led;
  else
   leds &= ~led;

  if (leds != oleds)
   kbdd_ioctl(kbd, KDSETLED, (caddr_t)&leds);

 } else if (type == EV_REP && code == REP_DELAY) {
  delay[0] = value;
  delay[1] = kbd->kb_delay2;
  kbdd_ioctl(kbd, KDSETREPEAT, (caddr_t)delay);
 } else if (type == EV_REP && code == REP_PERIOD) {
  delay[0] = kbd->kb_delay1;
  delay[1] = value;
  kbdd_ioctl(kbd, KDSETREPEAT, (caddr_t)delay);
 }
}
