
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct nct_softc {TYPE_1__* pins; } ;
typedef int device_t ;
struct TYPE_2__ {int gp_name; } ;


 int EINVAL ;
 int GPIOMAXNAME ;
 int GPIO_ASSERT_UNLOCKED (struct nct_softc*) ;
 int GPIO_LOCK (struct nct_softc*) ;
 int GPIO_UNLOCK (struct nct_softc*) ;
 int NCT_IS_VALID_PIN (size_t) ;
 struct nct_softc* device_get_softc (int ) ;
 int memcpy (char*,int ,int ) ;

__attribute__((used)) static int
nct_gpio_pin_getname(device_t dev, uint32_t pin_num, char *name)
{
 struct nct_softc *sc;

 if (!NCT_IS_VALID_PIN(pin_num))
  return (EINVAL);

 sc = device_get_softc(dev);
 GPIO_ASSERT_UNLOCKED(sc);
 GPIO_LOCK(sc);
 memcpy(name, sc->pins[pin_num].gp_name, GPIOMAXNAME);
 GPIO_UNLOCK(sc);

 return (0);
}
