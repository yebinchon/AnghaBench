
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gt_pci_softc {int sc_imask; int sc_elcr; int sc_ioh_elcr; int sc_st; int sc_ioh_icu2; int sc_ioh_icu1; } ;


 int PIC_OCW1 ;
 int bus_space_write_1 (int ,int ,int,int) ;

__attribute__((used)) static void
gt_pci_set_icus(struct gt_pci_softc *sc)
{

 if ((sc->sc_imask & 0xff00) != 0xff00)
  sc->sc_imask &= ~(1U << 2);
 else
  sc->sc_imask |= (1U << 2);

 bus_space_write_1(sc->sc_st, sc->sc_ioh_icu1, PIC_OCW1,
     sc->sc_imask & 0xff);
 bus_space_write_1(sc->sc_st, sc->sc_ioh_icu2, PIC_OCW1,
     (sc->sc_imask >> 8) & 0xff);

 bus_space_write_1(sc->sc_st, sc->sc_ioh_elcr, 0,
     sc->sc_elcr & 0xff);
 bus_space_write_1(sc->sc_st, sc->sc_ioh_elcr, 1,
     (sc->sc_elcr >> 8) & 0xff);
}
