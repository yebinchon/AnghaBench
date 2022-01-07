
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int8_t ;
struct tws_softc {scalar_t__ tws_state; } ;



uint8_t
tws_get_state(struct tws_softc *sc)
{

    return((u_int8_t)sc->tws_state);

}
