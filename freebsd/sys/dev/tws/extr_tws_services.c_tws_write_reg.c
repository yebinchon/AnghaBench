
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef scalar_t__ u_int32_t ;
typedef int u_int16_t ;
struct tws_softc {int bus_handle; int bus_tag; } ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int bus_space_write_1 (int ,int ,int,int ) ;
 int bus_space_write_2 (int ,int ,int,int ) ;
 int bus_space_write_4 (int ,int ,int,scalar_t__) ;

void
tws_write_reg(struct tws_softc *sc, int offset,
                  u_int32_t value, int size)
{
    bus_space_tag_t bus_tag = sc->bus_tag;
    bus_space_handle_t bus_handle = sc->bus_handle;

    if (size == 4)
        bus_space_write_4(bus_tag, bus_handle, offset, value);
    else
        if (size == 2)
            bus_space_write_2(bus_tag, bus_handle, offset,
                                     (u_int16_t)value);
        else
            bus_space_write_1(bus_tag, bus_handle, offset, (u_int8_t)value);
}
