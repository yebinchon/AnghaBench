
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lacp_softc {int dummy; } ;
struct lacp_port {struct lacp_aggregator* lp_aggregator; struct lacp_softc* lp_lsc; } ;
struct lacp_aggregator {int dummy; } ;


 int KASSERT (int,char*) ;
 int LACP_TIMER_ISARMED (struct lacp_port*,int ) ;
 int LACP_TIMER_WAIT_WHILE ;
 int lacp_aggregator_delref (struct lacp_softc*,struct lacp_aggregator*) ;

__attribute__((used)) static void
lacp_unselect(struct lacp_port *lp)
{
 struct lacp_softc *lsc = lp->lp_lsc;
 struct lacp_aggregator *la = lp->lp_aggregator;

 KASSERT(!LACP_TIMER_ISARMED(lp, LACP_TIMER_WAIT_WHILE),
     ("timer_wait_while still active"));

 if (la == ((void*)0)) {
  return;
 }

 lp->lp_aggregator = ((void*)0);
 lacp_aggregator_delref(lsc, la);
}
