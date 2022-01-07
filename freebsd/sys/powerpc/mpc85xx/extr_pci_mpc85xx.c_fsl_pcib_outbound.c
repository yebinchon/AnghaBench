
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct fsl_pcib_softc {int sc_bsh; int sc_bst; } ;


 int REG_POTAR (int) ;
 int REG_POTEAR (int) ;
 int REG_POWAR (int) ;
 int REG_POWBAR (int) ;


 int bus_space_write_4 (int ,int ,int ,int) ;
 int ffsll (int) ;

__attribute__((used)) static void
fsl_pcib_outbound(struct fsl_pcib_softc *sc, int wnd, int res, uint64_t start,
    uint64_t size, uint64_t pci_start)
{
 uint32_t attr, bar, tar;

 switch (res) {
 case 128:
  attr = 0x80044000 | (ffsll(size) - 2);
  break;
 case 129:
  attr = 0x80088000 | (ffsll(size) - 2);
  break;
 default:
  attr = 0x0004401f;
  break;
 }
 bar = start >> 12;
 tar = pci_start >> 12;

 bus_space_write_4(sc->sc_bst, sc->sc_bsh, REG_POTAR(wnd), tar);
 bus_space_write_4(sc->sc_bst, sc->sc_bsh, REG_POTEAR(wnd), 0);
 bus_space_write_4(sc->sc_bst, sc->sc_bsh, REG_POWBAR(wnd), bar);
 bus_space_write_4(sc->sc_bst, sc->sc_bsh, REG_POWAR(wnd), attr);
}
