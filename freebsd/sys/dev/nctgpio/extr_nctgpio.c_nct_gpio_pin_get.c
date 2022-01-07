
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nct_softc {int dummy; } ;
typedef int device_t ;


 int EINVAL ;
 int GPIO_ASSERT_UNLOCKED (struct nct_softc*) ;
 int GPIO_LOCK (struct nct_softc*) ;
 int GPIO_UNLOCK (struct nct_softc*) ;
 int NCT_IS_VALID_PIN (int ) ;
 struct nct_softc* device_get_softc (int ) ;
 int nct_read_pin (struct nct_softc*,int ) ;

__attribute__((used)) static int
nct_gpio_pin_get(device_t dev, uint32_t pin_num, uint32_t *pin_value)
{
 struct nct_softc *sc;

 if (!NCT_IS_VALID_PIN(pin_num))
  return (EINVAL);

 sc = device_get_softc(dev);
 GPIO_ASSERT_UNLOCKED(sc);
 GPIO_LOCK(sc);
 *pin_value = nct_read_pin(sc, pin_num);
 GPIO_UNLOCK(sc);

 return (0);
}
