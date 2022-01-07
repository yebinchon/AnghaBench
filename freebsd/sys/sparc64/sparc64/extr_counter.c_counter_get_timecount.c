
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timecounter {struct ct_softc* tc_priv; } ;
struct ct_softc {int sc_offset; int sc_handle; int sc_tag; } ;


 unsigned int bus_space_read_8 (int ,int ,int ) ;

__attribute__((used)) static unsigned int
counter_get_timecount(struct timecounter *tc)
{
 struct ct_softc *sc;

 sc = tc->tc_priv;
 return (bus_space_read_8(sc->sc_tag, sc->sc_handle, sc->sc_offset));
}
