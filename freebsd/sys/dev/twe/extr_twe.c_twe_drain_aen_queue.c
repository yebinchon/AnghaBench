
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
struct twe_softc {int dummy; } ;


 scalar_t__ TWE_AEN_QUEUE_EMPTY ;
 int TWE_IO_ASSERT_LOCKED (struct twe_softc*) ;
 int TWE_PARAM_AEN ;
 int TWE_PARAM_AEN_UnitCode ;
 int twe_enqueue_aen (struct twe_softc*,scalar_t__) ;
 scalar_t__ twe_get_param_2 (struct twe_softc*,int ,int ,scalar_t__*) ;

__attribute__((used)) static int
twe_drain_aen_queue(struct twe_softc *sc)
{
    u_int16_t aen;

    TWE_IO_ASSERT_LOCKED(sc);
    for (;;) {
 if (twe_get_param_2(sc, TWE_PARAM_AEN, TWE_PARAM_AEN_UnitCode, &aen))
     return(1);
 if (aen == TWE_AEN_QUEUE_EMPTY)
     return(0);
 twe_enqueue_aen(sc, aen);
    }
}
