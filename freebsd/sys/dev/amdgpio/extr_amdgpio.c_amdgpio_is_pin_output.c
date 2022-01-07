
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpio_softc {int dummy; } ;


 int AMDGPIO_LOCK (struct amdgpio_softc*) ;
 int AMDGPIO_PIN_REGISTER (int) ;
 int AMDGPIO_UNLOCK (struct amdgpio_softc*) ;
 int BIT (int ) ;
 int OUTPUT_ENABLE_OFF ;
 int amdgpio_read_4 (struct amdgpio_softc*,int) ;

__attribute__((used)) static bool
amdgpio_is_pin_output(struct amdgpio_softc *sc, uint32_t pin)
{
 uint32_t reg, val;
 bool ret;


 AMDGPIO_LOCK(sc);

 reg = AMDGPIO_PIN_REGISTER(pin);
 val = amdgpio_read_4(sc, reg);

 if (val & BIT(OUTPUT_ENABLE_OFF))
  ret = 1;
 else
  ret = 0;

 AMDGPIO_UNLOCK(sc);

 return (ret);
}
