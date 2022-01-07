
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syncache_head {scalar_t__ sch_nextc; int sch_timer; } ;
struct syncache {size_t sc_rxmits; scalar_t__ sc_rxttime; } ;


 int TCPTV_REXMTMAX ;
 int TCPT_RANGESET (int,int,int ,int ) ;
 scalar_t__ TSTMP_LT (scalar_t__,scalar_t__) ;
 int callout_reset (int *,scalar_t__,int ,void*) ;
 int syncache_timer ;
 int* tcp_backoff ;
 int tcp_rexmit_initial ;
 int tcp_rexmit_min ;
 scalar_t__ ticks ;

__attribute__((used)) static void
syncache_timeout(struct syncache *sc, struct syncache_head *sch, int docallout)
{
 int rexmt;

 if (sc->sc_rxmits == 0)
  rexmt = tcp_rexmit_initial;
 else
  TCPT_RANGESET(rexmt,
      tcp_rexmit_initial * tcp_backoff[sc->sc_rxmits],
      tcp_rexmit_min, TCPTV_REXMTMAX);
 sc->sc_rxttime = ticks + rexmt;
 sc->sc_rxmits++;
 if (TSTMP_LT(sc->sc_rxttime, sch->sch_nextc)) {
  sch->sch_nextc = sc->sc_rxttime;
  if (docallout)
   callout_reset(&sch->sch_timer, sch->sch_nextc - ticks,
       syncache_timer, (void *)sch);
 }
}
