
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct mps_softc {int * events_to_record; } ;
struct TYPE_3__ {int * Types; } ;
typedef TYPE_1__ mps_event_enable_t ;


 int mps_lock (struct mps_softc*) ;
 int mps_unlock (struct mps_softc*) ;

__attribute__((used)) static void
mps_user_event_enable(struct mps_softc *sc, mps_event_enable_t *data)
{
 uint8_t i;

 mps_lock(sc);
 for (i = 0; i < 4; i++) {
  sc->events_to_record[i] = data->Types[i];
 }
 mps_unlock(sc);
}
