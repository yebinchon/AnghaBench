
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_softc {int sc_staid; } ;


 int clrbit (int ,int) ;

__attribute__((used)) static void
delstaid(struct mwl_softc *sc, int staid)
{
 clrbit(sc->sc_staid, staid);
}
