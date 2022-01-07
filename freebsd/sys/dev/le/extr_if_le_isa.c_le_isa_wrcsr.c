
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct le_isa_softc {int sc_rdp; int sc_rres; int sc_rap; } ;
struct lance_softc {int dummy; } ;


 int BUS_SPACE_BARRIER_WRITE ;
 int bus_barrier (int ,int ,int,int ) ;
 int bus_write_2 (int ,int ,int ) ;

__attribute__((used)) static void
le_isa_wrcsr(struct lance_softc *sc, uint16_t port, uint16_t val)
{
 struct le_isa_softc *lesc = (struct le_isa_softc *)sc;

 bus_write_2(lesc->sc_rres, lesc->sc_rap, port);
 bus_barrier(lesc->sc_rres, lesc->sc_rap, 2, BUS_SPACE_BARRIER_WRITE);
 bus_write_2(lesc->sc_rres, lesc->sc_rdp, val);
}
