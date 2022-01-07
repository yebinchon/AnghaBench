
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpr_softc {int event_list; } ;
struct mpr_event_handle {int dummy; } ;


 int M_MPR ;
 int TAILQ_REMOVE (int *,struct mpr_event_handle*,int ) ;
 int eh_list ;
 int free (struct mpr_event_handle*,int ) ;
 int mpr_update_events (struct mpr_softc*,int *,int *) ;

int
mpr_deregister_events(struct mpr_softc *sc, struct mpr_event_handle *handle)
{

 TAILQ_REMOVE(&sc->event_list, handle, eh_list);
 free(handle, M_MPR);
 return (mpr_update_events(sc, ((void*)0), ((void*)0)));
}
