
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lagg_softc {int dummy; } ;
struct lagg_port {struct lagg_softc* lp_softc; } ;


 int lagg_lb_porttable (struct lagg_softc*,struct lagg_port*) ;

__attribute__((used)) static void
lagg_lb_port_destroy(struct lagg_port *lp)
{
 struct lagg_softc *sc = lp->lp_softc;
 lagg_lb_porttable(sc, lp);
}
