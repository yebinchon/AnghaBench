
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct bwi_softc {int sc_dev; } ;


 scalar_t__ BWI_PCIM_REGWIN (int) ;
 int BWI_PCIR_SEL_REGWIN ;
 int DELAY (int) ;
 int ENXIO ;
 int RETRY_MAX ;
 scalar_t__ pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,scalar_t__,int) ;

__attribute__((used)) static int
bwi_regwin_select(struct bwi_softc *sc, int id)
{
 uint32_t win = BWI_PCIM_REGWIN(id);
 int i;


 for (i = 0; i < 50; ++i) {
  pci_write_config(sc->sc_dev, BWI_PCIR_SEL_REGWIN, win, 4);
  if (pci_read_config(sc->sc_dev, BWI_PCIR_SEL_REGWIN, 4) == win)
   return 0;
  DELAY(10);
 }


 return ENXIO;
}
