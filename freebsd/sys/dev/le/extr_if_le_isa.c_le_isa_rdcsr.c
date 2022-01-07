
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct le_isa_softc {int sc_rdp; int sc_rres; int sc_rap; } ;
struct lance_softc {int dummy; } ;


 int BUS_SPACE_BARRIER_WRITE ;
 int bus_barrier (int ,int ,int,int ) ;
 int bus_read_2 (int ,int ) ;
 int bus_write_2 (int ,int ,int ) ;

__attribute__((used)) static uint16_t
le_isa_rdcsr(struct lance_softc *sc, uint16_t port)
{
 struct le_isa_softc *lesc = (struct le_isa_softc *)sc;

 bus_write_2(lesc->sc_rres, lesc->sc_rap, port);
 bus_barrier(lesc->sc_rres, lesc->sc_rap, 2, BUS_SPACE_BARRIER_WRITE);
 return (bus_read_2(lesc->sc_rres, lesc->sc_rdp));
}
