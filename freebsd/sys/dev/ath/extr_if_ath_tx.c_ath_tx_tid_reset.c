
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_tid {scalar_t__ paused; scalar_t__ sched; scalar_t__ addba_tx_pending; scalar_t__ isfiltered; scalar_t__ bar_tx; scalar_t__ bar_wait; scalar_t__ cleanup_inprogress; scalar_t__ incomp; } ;
struct ath_softc {int dummy; } ;



__attribute__((used)) static void
ath_tx_tid_reset(struct ath_softc *sc, struct ath_tid *tid)
{
 if (tid->bar_wait) {
  if (tid->paused > 0) {
   tid->paused --;
  }
 }
 if (tid->isfiltered) {
  if (tid->paused > 0) {
   tid->paused --;
  }
 }






 tid->bar_wait = 0;
 tid->bar_tx = 0;
 tid->isfiltered = 0;
 tid->sched = 0;
 tid->addba_tx_pending = 0;
}
