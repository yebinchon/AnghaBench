
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct cfi_softc {int sc_width; int sc_handle; int sc_tag; } ;


 int bus_space_write_1 (int ,int ,int,int) ;
 int bus_space_write_2 (int ,int ,int,int) ;
 int bus_space_write_4 (int ,int ,int,int) ;
 int htole16 (int) ;
 int htole32 (int) ;

__attribute__((used)) static void
cfi_write(struct cfi_softc *sc, u_int ofs, u_int val)
{

 ofs &= ~(sc->sc_width - 1);
 switch (sc->sc_width) {
 case 1:
  bus_space_write_1(sc->sc_tag, sc->sc_handle, ofs, val);
  break;
 case 2:



  bus_space_write_2(sc->sc_tag, sc->sc_handle, ofs, htole16(val));


  break;
 case 4:



  bus_space_write_4(sc->sc_tag, sc->sc_handle, ofs, htole32(val));

  break;
 }
}
