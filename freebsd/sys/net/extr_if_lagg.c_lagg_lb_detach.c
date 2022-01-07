
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lagg_softc {scalar_t__ sc_psc; } ;
struct lagg_lb {int dummy; } ;


 int M_LAGG ;
 int free (struct lagg_lb*,int ) ;

__attribute__((used)) static void
lagg_lb_detach(struct lagg_softc *sc)
{
 struct lagg_lb *lb;

 lb = (struct lagg_lb *)sc->sc_psc;
 if (lb != ((void*)0))
  free(lb, M_LAGG);
}
