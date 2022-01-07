
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mps_softc {int event_list; } ;
struct mps_event_handle {void* data; int * callback; } ;
typedef int mps_evt_callback_t ;


 int ENOMEM ;
 int MPS_ERROR ;
 int M_MPT2 ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INSERT_TAIL (int *,struct mps_event_handle*,int ) ;
 int eh_list ;
 struct mps_event_handle* malloc (int,int ,int) ;
 int mps_dprint (struct mps_softc*,int ,char*) ;
 int mps_update_events (struct mps_softc*,struct mps_event_handle*,int *) ;

int
mps_register_events(struct mps_softc *sc, u32 *mask,
    mps_evt_callback_t *cb, void *data, struct mps_event_handle **handle)
{
 struct mps_event_handle *eh;
 int error = 0;

 eh = malloc(sizeof(struct mps_event_handle), M_MPT2, M_WAITOK|M_ZERO);
 if(!eh) {
  mps_dprint(sc, MPS_ERROR, "Cannot allocate event memory\n");
  return (ENOMEM);
 }
 eh->callback = cb;
 eh->data = data;
 TAILQ_INSERT_TAIL(&sc->event_list, eh, eh_list);
 if (mask != ((void*)0))
  error = mps_update_events(sc, eh, mask);
 *handle = eh;

 return (error);
}
