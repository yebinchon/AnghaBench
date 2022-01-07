
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct cfi_softc {int sc_width; int sc_handle; int sc_tag; } ;


 int bus_space_read_1 (int ,int ,int) ;
 int bus_space_read_2 (int ,int ,int) ;
 int bus_space_read_4 (int ,int ,int) ;

uint32_t
cfi_read_raw(struct cfi_softc *sc, u_int ofs)
{
 uint32_t val;

 ofs &= ~(sc->sc_width - 1);
 switch (sc->sc_width) {
 case 1:
  val = bus_space_read_1(sc->sc_tag, sc->sc_handle, ofs);
  break;
 case 2:
  val = bus_space_read_2(sc->sc_tag, sc->sc_handle, ofs);
  break;
 case 4:
  val = bus_space_read_4(sc->sc_tag, sc->sc_handle, ofs);
  break;
 default:
  val = ~0;
  break;
 }
 return (val);
}
