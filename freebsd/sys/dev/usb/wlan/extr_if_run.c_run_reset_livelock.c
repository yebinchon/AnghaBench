
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct run_softc {int dummy; } ;


 int MA_OWNED ;
 int RT2860_DEBUG ;
 int RT2860_MAC_RX_EN ;
 int RT2860_MAC_SRST ;
 int RT2860_MAC_SYS_CTRL ;
 int RT2860_MAC_TX_EN ;
 int RUN_DEBUG_RESET ;
 int RUN_DPRINTF (struct run_softc*,int ,char*,...) ;
 int RUN_LOCK_ASSERT (struct run_softc*,int ) ;
 int run_delay (struct run_softc*,int) ;
 int run_read (struct run_softc*,int ,int*) ;
 int run_write (struct run_softc*,int ,int) ;

__attribute__((used)) static void
run_reset_livelock(struct run_softc *sc)
{
 uint32_t tmp;

 RUN_LOCK_ASSERT(sc, MA_OWNED);






 run_read(sc, RT2860_DEBUG, &tmp);
 RUN_DPRINTF(sc, RUN_DEBUG_RESET, "debug reg %08x\n", tmp);
 if ((tmp & (1 << 29)) && (tmp & (1 << 7 | 1 << 5))) {
  RUN_DPRINTF(sc, RUN_DEBUG_RESET,
      "CTS-to-self livelock detected\n");
  run_write(sc, RT2860_MAC_SYS_CTRL, RT2860_MAC_SRST);
  run_delay(sc, 1);
  run_write(sc, RT2860_MAC_SYS_CTRL,
      RT2860_MAC_RX_EN | RT2860_MAC_TX_EN);
 }
}
