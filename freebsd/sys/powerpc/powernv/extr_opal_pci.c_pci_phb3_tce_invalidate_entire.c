
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opalpci_softc {int r_reg; } ;


 int PHB3_TCE_KILL_INVAL_ALL ;
 int bus_write_8 (int ,int,int ) ;
 int mb () ;

__attribute__((used)) static void
pci_phb3_tce_invalidate_entire(struct opalpci_softc *sc)
{

 mb();
 bus_write_8(sc->r_reg, 0x210, PHB3_TCE_KILL_INVAL_ALL);
 mb();
}
