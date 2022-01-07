
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct dme_softc {int dme_handle; int dme_tag; } ;


 int BUS_SPACE_BARRIER_WRITE ;
 int CMD_ADDR ;
 int DATA_ADDR ;
 int bus_space_barrier (int ,int ,int ,int,int ) ;
 int bus_space_write_1 (int ,int ,int ,int ) ;

__attribute__((used)) static void
dme_write_reg(struct dme_softc *sc, uint8_t reg, uint8_t value)
{


 bus_space_write_1(sc->dme_tag, sc->dme_handle, CMD_ADDR, reg);
 bus_space_barrier(sc->dme_tag, sc->dme_handle, CMD_ADDR, 1,
     BUS_SPACE_BARRIER_WRITE);


 bus_space_write_1(sc->dme_tag, sc->dme_handle, DATA_ADDR, value);
 bus_space_barrier(sc->dme_tag, sc->dme_handle, DATA_ADDR, 1,
     BUS_SPACE_BARRIER_WRITE);
}
