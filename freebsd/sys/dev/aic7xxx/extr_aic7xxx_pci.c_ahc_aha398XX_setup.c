
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {char channel; int flags; int dev_softc; } ;
typedef int aic_dev_softc_t ;





 int AHC_LARGE_SEEPROM ;
 int aic_get_pci_slot (int ) ;
 int printf (char*,int) ;

__attribute__((used)) static int
ahc_aha398XX_setup(struct ahc_softc *ahc)
{
 aic_dev_softc_t pci;

 pci = ahc->dev_softc;
 switch (aic_get_pci_slot(pci)) {
 case 130:
  ahc->channel = 'A';
  break;
 case 129:
  ahc->channel = 'B';
  break;
 case 128:
  ahc->channel = 'C';
  break;
 default:
  printf("adapter at unexpected slot %d\n"
         "unable to map to a channel\n",
         aic_get_pci_slot(pci));
  ahc->channel = 'A';
  break;
 }
 ahc->flags |= AHC_LARGE_SEEPROM;
 return (0);
}
