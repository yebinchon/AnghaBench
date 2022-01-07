
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiokey {int debounce_interval; int debounce_callout; } ;


 int GPIOKEY_LOCK (struct gpiokey*) ;
 int GPIOKEY_UNLOCK (struct gpiokey*) ;
 int callout_pending (int *) ;
 int callout_reset (int *,int,int ,struct gpiokey*) ;
 int gpiokey_debounced_intr ;
 int hz ;

__attribute__((used)) static void
gpiokey_intr(void *arg)
{
 struct gpiokey *key;
 int debounce_ticks;

 key = arg;

 GPIOKEY_LOCK(key);
 debounce_ticks = (hz * key->debounce_interval) / 1000;
 if (debounce_ticks == 0)
  debounce_ticks = 1;
 if (!callout_pending(&key->debounce_callout))
  callout_reset(&key->debounce_callout, debounce_ticks,
      gpiokey_debounced_intr, key);
 GPIOKEY_UNLOCK(key);
}
