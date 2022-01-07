
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rt2560_softc {int dummy; } ;


 int RAL_WRITE (struct rt2560_softc*,int ,int) ;
 int RT2560_LEDCSR ;

__attribute__((used)) static void
rt2560_update_led(struct rt2560_softc *sc, int led1, int led2)
{
 uint32_t tmp;


 tmp = led1 << 16 | led2 << 17 | 70 << 8 | 30;
 RAL_WRITE(sc, RT2560_LEDCSR, tmp);
}
