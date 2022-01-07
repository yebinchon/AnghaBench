
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grackle_softc {int sc_addr; } ;


 int out32rb (int ,int ) ;

__attribute__((used)) static void
grackle_disable_config(struct grackle_softc *sc)
{




 out32rb(sc->sc_addr, 0);
}
