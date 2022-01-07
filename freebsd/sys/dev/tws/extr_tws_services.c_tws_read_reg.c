
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct tws_softc {int bus_handle; int bus_tag; } ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 scalar_t__ bus_space_read_1 (int ,int ,int) ;
 scalar_t__ bus_space_read_2 (int ,int ,int) ;
 scalar_t__ bus_space_read_4 (int ,int ,int) ;

u_int32_t
tws_read_reg(struct tws_softc *sc, int offset, int size)
{
    bus_space_tag_t bus_tag = sc->bus_tag;
    bus_space_handle_t bus_handle = sc->bus_handle;

    if (size == 4)
        return((u_int32_t)bus_space_read_4(bus_tag, bus_handle, offset));
    else if (size == 2)
            return((u_int32_t)bus_space_read_2(bus_tag, bus_handle, offset));
         else
            return((u_int32_t)bus_space_read_1(bus_tag, bus_handle, offset));
}
