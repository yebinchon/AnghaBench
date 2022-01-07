
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiokeys_softc {int sc_dev; } ;
struct gpiokey {scalar_t__ pin; int debounce_callout; int repeat_callout; scalar_t__ irq_res; int irq_rid; scalar_t__ intr_hl; } ;


 int GPIOKEY_LOCK (struct gpiokey*) ;
 int GPIOKEY_LOCK_DESTROY (struct gpiokey*) ;
 int GPIOKEY_UNLOCK (struct gpiokey*) ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 int callout_drain (int *) ;
 scalar_t__ callout_pending (int *) ;
 int gpio_pin_release (scalar_t__) ;

__attribute__((used)) static void
gpiokeys_detach_key(struct gpiokeys_softc *sc, struct gpiokey *key)
{

 GPIOKEY_LOCK(key);
 if (key->intr_hl)
  bus_teardown_intr(sc->sc_dev, key->irq_res, key->intr_hl);
 if (key->irq_res)
  bus_release_resource(sc->sc_dev, SYS_RES_IRQ,
      key->irq_rid, key->irq_res);
 if (callout_pending(&key->repeat_callout))
  callout_drain(&key->repeat_callout);
 if (callout_pending(&key->debounce_callout))
  callout_drain(&key->debounce_callout);
 if (key->pin)
  gpio_pin_release(key->pin);
 GPIOKEY_UNLOCK(key);

 GPIOKEY_LOCK_DESTROY(key);
}
