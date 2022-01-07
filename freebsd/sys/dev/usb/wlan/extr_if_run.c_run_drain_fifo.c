
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_2__ {int ic_oerrors; } ;
struct run_softc {scalar_t__** wcid_stats; int fifo_cnt; TYPE_1__ sc_ic; } ;
typedef scalar_t__ int8_t ;


 int MA_OWNED ;
 int RT2860_TXQ_ACKREQ ;
 int RT2860_TXQ_MCS_SHIFT ;
 int RT2860_TXQ_OK ;
 int RT2860_TXQ_PID_SHIFT ;
 int RT2860_TXQ_VLD ;
 int RT2860_TXQ_WCID_SHIFT ;
 int RT2860_TX_STAT_FIFO ;
 size_t RT2870_WCID_MAX ;
 int RUN_DEBUG_XMIT ;
 int RUN_DPRINTF (struct run_softc*,int ,char*,int) ;
 int RUN_LOCK_ASSERT (struct run_softc*,int ) ;
 size_t RUN_RETRY ;
 size_t RUN_SUCCESS ;
 size_t RUN_TXCNT ;
 int counter_u64_add (int ,int) ;
 int run_read (struct run_softc*,int ,int*) ;

__attribute__((used)) static void
run_drain_fifo(void *arg)
{
 struct run_softc *sc = arg;
 uint32_t stat;
 uint16_t (*wstat)[3];
 uint8_t wcid, mcs, pid;
 int8_t retry;

 RUN_LOCK_ASSERT(sc, MA_OWNED);

 for (;;) {

  run_read(sc, RT2860_TX_STAT_FIFO, &stat);
  RUN_DPRINTF(sc, RUN_DEBUG_XMIT, "tx stat 0x%08x\n", stat);
  if (!(stat & RT2860_TXQ_VLD))
   break;

  wcid = (stat >> RT2860_TXQ_WCID_SHIFT) & 0xff;


  if (!(stat & RT2860_TXQ_ACKREQ) || wcid > RT2870_WCID_MAX ||
      wcid == 0)
   continue;
  wstat = &(sc->wcid_stats[wcid]);
  (*wstat)[RUN_TXCNT]++;
  if (stat & RT2860_TXQ_OK)
   (*wstat)[RUN_SUCCESS]++;
  else
   counter_u64_add(sc->sc_ic.ic_oerrors, 1);





  mcs = (stat >> RT2860_TXQ_MCS_SHIFT) & 0x7f;
  pid = (stat >> RT2860_TXQ_PID_SHIFT) & 0xf;
  if ((retry = pid -1 - mcs) > 0) {
   (*wstat)[RUN_TXCNT] += retry;
   (*wstat)[RUN_RETRY] += retry;
  }
 }
 RUN_DPRINTF(sc, RUN_DEBUG_XMIT, "count=%d\n", sc->fifo_cnt);

 sc->fifo_cnt = 0;
}
