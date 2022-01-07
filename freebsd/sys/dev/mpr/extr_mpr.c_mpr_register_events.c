
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mpr_softc {int event_list; } ;
struct mpr_event_handle {void* data; int * callback; } ;
typedef int mpr_evt_callback_t ;


 int ENOMEM ;
 int MPR_ERROR ;
 int MPR_EVENT ;
 int M_MPR ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INSERT_TAIL (int *,struct mpr_event_handle*,int ) ;
 int eh_list ;
 struct mpr_event_handle* malloc (int,int ,int) ;
 int mpr_dprint (struct mpr_softc*,int,char*) ;
 int mpr_update_events (struct mpr_softc*,struct mpr_event_handle*,int *) ;

int
mpr_register_events(struct mpr_softc *sc, uint8_t *mask,
    mpr_evt_callback_t *cb, void *data, struct mpr_event_handle **handle)
{
 struct mpr_event_handle *eh;
 int error = 0;

 eh = malloc(sizeof(struct mpr_event_handle), M_MPR, M_WAITOK|M_ZERO);
 if (!eh) {
  mpr_dprint(sc, MPR_EVENT|MPR_ERROR,
      "Cannot allocate event memory\n");
  return (ENOMEM);
 }
 eh->callback = cb;
 eh->data = data;
 TAILQ_INSERT_TAIL(&sc->event_list, eh, eh_list);
 if (mask != ((void*)0))
  error = mpr_update_events(sc, eh, mask);
 *handle = eh;

 return (error);
}
