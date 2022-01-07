
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int upd ;
typedef int uint32_t ;
struct chipc_gpio_update {int dummy; } ;
struct chipc_gpio_softc {int dummy; } ;
typedef int device_t ;


 int CC_GPIO_LOCK (struct chipc_gpio_softc*) ;
 int CC_GPIO_UNLOCK (struct chipc_gpio_softc*) ;
 int CC_GPIO_VALID_PIN (int ) ;
 int EINVAL ;
 int chipc_gpio_commit_update (struct chipc_gpio_softc*,struct chipc_gpio_update*) ;
 int chipc_gpio_pin_update (struct chipc_gpio_softc*,struct chipc_gpio_update*,int ,int ) ;
 struct chipc_gpio_softc* device_get_softc (int ) ;
 int memset (struct chipc_gpio_update*,int ,int) ;

__attribute__((used)) static int
chipc_gpio_pin_setflags(device_t dev, uint32_t pin_num, uint32_t flags)
{
 struct chipc_gpio_softc *sc;
 struct chipc_gpio_update upd;
 int error;

 sc = device_get_softc(dev);

 if (!CC_GPIO_VALID_PIN(pin_num))
  return (EINVAL);


 memset(&upd, 0, sizeof(upd));
 if ((error = chipc_gpio_pin_update(sc, &upd, pin_num, flags)))
  return (error);


 CC_GPIO_LOCK(sc);
 error = chipc_gpio_commit_update(sc, &upd);
 CC_GPIO_UNLOCK(sc);

 return (error);
}
