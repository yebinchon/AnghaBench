
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mps_softc {int event_list; } ;
struct mps_event_handle {int dummy; } ;


 int M_MPT2 ;
 int TAILQ_REMOVE (int *,struct mps_event_handle*,int ) ;
 int eh_list ;
 int free (struct mps_event_handle*,int ) ;

void
mps_deregister_events(struct mps_softc *sc, struct mps_event_handle *handle)
{

 TAILQ_REMOVE(&sc->event_list, handle, eh_list);
 free(handle, M_MPT2);
}
