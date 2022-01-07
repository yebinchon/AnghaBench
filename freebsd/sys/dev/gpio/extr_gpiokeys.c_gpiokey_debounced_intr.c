
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiokey {scalar_t__ keycode; int parent_sc; int repeat_callout; scalar_t__ autorepeat; int repeat_delay; int pin; } ;


 scalar_t__ GPIOKEY_NONE ;
 scalar_t__ callout_pending (int *) ;
 int callout_reset (int *,int ,int ,struct gpiokey*) ;
 int callout_stop (int *) ;
 int gpio_pin_is_active (int ,int*) ;
 int gpiokey_autorepeat ;
 int gpiokeys_key_event (int ,scalar_t__,int) ;

__attribute__((used)) static void
gpiokey_debounced_intr(void *arg)
{
 struct gpiokey *key;
 bool active;

 key = arg;

 if (key->keycode == GPIOKEY_NONE)
  return;

 gpio_pin_is_active(key->pin, &active);
 if (active) {
  gpiokeys_key_event(key->parent_sc, key->keycode, 1);
  if (key->autorepeat) {
   callout_reset(&key->repeat_callout, key->repeat_delay,
       gpiokey_autorepeat, key);
  }
 }
 else {
  if (key->autorepeat &&
      callout_pending(&key->repeat_callout))
   callout_stop(&key->repeat_callout);
  gpiokeys_key_event(key->parent_sc, key->keycode, 0);
 }
}
