
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jz4780_timer_softc {int dummy; } ;
struct eventtimer {int et_frequency; scalar_t__ et_priv; } ;
typedef int sbintime_t ;


 int CSR_WRITE_4 (struct jz4780_timer_softc*,int ,int) ;
 int EINVAL ;
 int JZ_TC_TCNT (int) ;
 int JZ_TC_TDFR (int) ;
 int JZ_TC_TESR ;
 int SBT_1S ;
 int TESR_TCST5 ;

__attribute__((used)) static int
jz4780_timer_start(struct eventtimer *et, sbintime_t first, sbintime_t period)
{
 struct jz4780_timer_softc *sc =
     (struct jz4780_timer_softc *)et->et_priv;
 uint32_t ticks;

 ticks = (first * et->et_frequency) / SBT_1S;
 if (ticks == 0)
  return (EINVAL);

 CSR_WRITE_4(sc, JZ_TC_TDFR(5), ticks);
 CSR_WRITE_4(sc, JZ_TC_TCNT(5), 0);
 CSR_WRITE_4(sc, JZ_TC_TESR, TESR_TCST5);

 return (0);
}
