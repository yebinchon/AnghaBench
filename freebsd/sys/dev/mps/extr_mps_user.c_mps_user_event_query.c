
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct mps_softc {int * events_to_record; } ;
struct TYPE_3__ {int * Types; int Entries; } ;
typedef TYPE_1__ mps_event_query_t ;


 int MPS_EVENT_QUEUE_SIZE ;
 int mps_lock (struct mps_softc*) ;
 int mps_unlock (struct mps_softc*) ;

__attribute__((used)) static void
mps_user_event_query(struct mps_softc *sc, mps_event_query_t *data)
{
 uint8_t i;

 mps_lock(sc);
 data->Entries = MPS_EVENT_QUEUE_SIZE;

 for (i = 0; i < 4; i++) {
  data->Types[i] = sc->events_to_record[i];
 }
 mps_unlock(sc);
}
