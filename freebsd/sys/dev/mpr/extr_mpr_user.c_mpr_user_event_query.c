
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct mpr_softc {int * events_to_record; } ;
struct TYPE_3__ {int * Types; int Entries; } ;
typedef TYPE_1__ mpr_event_query_t ;


 int MPR_EVENT_QUEUE_SIZE ;
 int mpr_lock (struct mpr_softc*) ;
 int mpr_unlock (struct mpr_softc*) ;

__attribute__((used)) static void
mpr_user_event_query(struct mpr_softc *sc, mpr_event_query_t *data)
{
 uint8_t i;

 mpr_lock(sc);
 data->Entries = MPR_EVENT_QUEUE_SIZE;

 for (i = 0; i < 4; i++) {
  data->Types[i] = sc->events_to_record[i];
 }
 mpr_unlock(sc);
}
