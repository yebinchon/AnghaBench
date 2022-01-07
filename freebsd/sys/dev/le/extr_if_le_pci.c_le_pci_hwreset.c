
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lance_softc {int dummy; } ;


 int LE_B20_SSTYLE_PCNETPCI2 ;
 int LE_BCR20 ;
 int le_pci_wrbcr (struct lance_softc*,int ,int ) ;

__attribute__((used)) static void
le_pci_hwreset(struct lance_softc *sc)
{
 le_pci_wrbcr(sc, LE_BCR20, LE_B20_SSTYLE_PCNETPCI2);
}
