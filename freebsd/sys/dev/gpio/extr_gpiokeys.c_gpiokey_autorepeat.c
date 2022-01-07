
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiokey {scalar_t__ keycode; int repeat; int repeat_callout; int parent_sc; } ;


 scalar_t__ GPIOKEY_NONE ;
 int callout_reset (int *,int ,void (*) (void*),struct gpiokey*) ;
 int gpiokeys_key_event (int ,scalar_t__,int) ;

__attribute__((used)) static void
gpiokey_autorepeat(void *arg)
{
 struct gpiokey *key;

 key = arg;

 if (key->keycode == GPIOKEY_NONE)
  return;

 gpiokeys_key_event(key->parent_sc, key->keycode, 1);

 callout_reset(&key->repeat_callout, key->repeat,
      gpiokey_autorepeat, key);
}
