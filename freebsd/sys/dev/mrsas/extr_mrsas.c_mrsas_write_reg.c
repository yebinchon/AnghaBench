
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct mrsas_softc {int bus_handle; int bus_tag; } ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int bus_space_write_4 (int ,int ,int,int ) ;

void
mrsas_write_reg(struct mrsas_softc *sc, int offset,
    u_int32_t value)
{
 bus_space_tag_t bus_tag = sc->bus_tag;
 bus_space_handle_t bus_handle = sc->bus_handle;

 bus_space_write_4(bus_tag, bus_handle, offset, value);
}
