
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct run_softc {int dummy; } ;


 int RT2860_BCN_TIME_CFG ;
 int RT2860_BCN_TX_EN ;
 int RT2860_TBTT_TIMER_EN ;
 int RT2860_TSF_TIMER_EN ;
 scalar_t__ run_read (struct run_softc*,int ,int*) ;
 int run_write (struct run_softc*,int ,int) ;

__attribute__((used)) static void
run_enable_tsf(struct run_softc *sc)
{
 uint32_t tmp;

 if (run_read(sc, RT2860_BCN_TIME_CFG, &tmp) == 0) {
  tmp &= ~(RT2860_BCN_TX_EN | RT2860_TBTT_TIMER_EN);
  tmp |= RT2860_TSF_TIMER_EN;
  run_write(sc, RT2860_BCN_TIME_CFG, tmp);
 }
}
