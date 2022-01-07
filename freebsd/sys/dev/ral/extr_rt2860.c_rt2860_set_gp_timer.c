
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rt2860_softc {int dummy; } ;


 int RAL_READ (struct rt2860_softc*,int ) ;
 int RAL_WRITE (struct rt2860_softc*,int ,int) ;
 int RT2860_GP_TIMER_EN ;
 int RT2860_GP_TIMER_SHIFT ;
 int RT2860_INT_TIMER_CFG ;
 int RT2860_INT_TIMER_EN ;

__attribute__((used)) static void
rt2860_set_gp_timer(struct rt2860_softc *sc, int ms)
{
 uint32_t tmp;


 tmp = RAL_READ(sc, RT2860_INT_TIMER_EN);
 RAL_WRITE(sc, RT2860_INT_TIMER_EN, tmp & ~RT2860_GP_TIMER_EN);

 if (ms == 0)
  return;

 tmp = RAL_READ(sc, RT2860_INT_TIMER_CFG);
 ms *= 16;
 tmp = (tmp & 0xffff) | ms << RT2860_GP_TIMER_SHIFT;
 RAL_WRITE(sc, RT2860_INT_TIMER_CFG, tmp);


 tmp = RAL_READ(sc, RT2860_INT_TIMER_EN);
 RAL_WRITE(sc, RT2860_INT_TIMER_EN, tmp | RT2860_GP_TIMER_EN);
}
