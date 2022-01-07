
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
struct twe_softc {int twe_aen_tail; int twe_aen_head; scalar_t__* twe_aen_queue; } ;


 int TWE_Q_LENGTH ;

__attribute__((used)) static int
twe_find_aen(struct twe_softc *sc, u_int16_t aen)
{
    int i, missing;

    missing = 1;
    for (i = sc->twe_aen_tail; (i != sc->twe_aen_head) && missing; i = (i + 1) % TWE_Q_LENGTH) {
 if (sc->twe_aen_queue[i] == aen)
     missing = 0;
    }
    return(missing);
}
