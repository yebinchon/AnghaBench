
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_tid {scalar_t__ paused; TYPE_1__* an; } ;
struct ath_softc {int dummy; } ;
struct TYPE_2__ {scalar_t__ an_leak_count; } ;


 int ATH_TX_LOCK_ASSERT (struct ath_softc*) ;

__attribute__((used)) static int
ath_tx_tid_can_tx_or_sched(struct ath_softc *sc, struct ath_tid *tid)
{

 ATH_TX_LOCK_ASSERT(sc);

 if (tid->an->an_leak_count > 0) {
  return (1);
 }
 if (tid->paused)
  return (0);
 return (1);
}
