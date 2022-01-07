
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lacp_softc {int lsc_aggregators; } ;
struct lacp_port {int dummy; } ;
struct lacp_aggregator {int la_refcnt; scalar_t__ la_pending; int la_ports; scalar_t__ la_nports; } ;


 int M_DEVBUF ;
 int M_NOWAIT ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct lacp_aggregator*,int ) ;
 int la_q ;
 struct lacp_aggregator* malloc (int,int ,int ) ;

__attribute__((used)) static struct lacp_aggregator *
lacp_aggregator_get(struct lacp_softc *lsc, struct lacp_port *lp)
{
 struct lacp_aggregator *la;

 la = malloc(sizeof(*la), M_DEVBUF, M_NOWAIT);
 if (la) {
  la->la_refcnt = 1;
  la->la_nports = 0;
  TAILQ_INIT(&la->la_ports);
  la->la_pending = 0;
  TAILQ_INSERT_TAIL(&lsc->lsc_aggregators, la, la_q);
 }

 return (la);
}
