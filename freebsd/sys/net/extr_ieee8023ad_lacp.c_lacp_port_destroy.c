
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lagg_port {int lp_detaching; } ;
struct lacp_softc {int dummy; } ;
struct lacp_port {int lp_ifma; struct lacp_softc* lp_lsc; } ;


 int LACP_LOCK (struct lacp_softc*) ;
 int LACP_NTIMER ;
 struct lacp_port* LACP_PORT (struct lagg_port*) ;
 int LACP_TIMER_DISARM (struct lacp_port*,int) ;
 int LACP_UNLOCK (struct lacp_softc*) ;
 int LIST_REMOVE (struct lacp_port*,int ) ;
 int M_DEVBUF ;
 int free (struct lacp_port*,int ) ;
 int if_delmulti_ifma (int ) ;
 int lacp_disable_collecting (struct lacp_port*) ;
 int lacp_disable_distributing (struct lacp_port*) ;
 int lacp_unselect (struct lacp_port*) ;
 int lp_next ;

void
lacp_port_destroy(struct lagg_port *lgp)
{
 struct lacp_port *lp = LACP_PORT(lgp);
 struct lacp_softc *lsc = lp->lp_lsc;
 int i;

 LACP_LOCK(lsc);
 for (i = 0; i < LACP_NTIMER; i++) {
  LACP_TIMER_DISARM(lp, i);
 }

 lacp_disable_collecting(lp);
 lacp_disable_distributing(lp);
 lacp_unselect(lp);

 LIST_REMOVE(lp, lp_next);
 LACP_UNLOCK(lsc);


 if (!lgp->lp_detaching)
  if_delmulti_ifma(lp->lp_ifma);

 free(lp, M_DEVBUF);
}
