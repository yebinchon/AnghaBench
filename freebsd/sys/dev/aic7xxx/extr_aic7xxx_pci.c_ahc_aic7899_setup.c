
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {char channel; int instruction_ram_size; int bugs; int flags; int features; int chip; int dev_softc; } ;
typedef int aic_dev_softc_t ;


 int AHC_AIC7899 ;
 int AHC_AIC7899_FE ;
 int AHC_NEWEEPROM_FMT ;
 int AHC_SCBCHAN_UPLOAD_BUG ;
 int aic_get_pci_function (int ) ;

__attribute__((used)) static int
ahc_aic7899_setup(struct ahc_softc *ahc)
{
 aic_dev_softc_t pci;

 pci = ahc->dev_softc;
 ahc->channel = aic_get_pci_function(pci) == 1 ? 'B' : 'A';
 ahc->chip = AHC_AIC7899;
 ahc->features = AHC_AIC7899_FE;
 ahc->flags |= AHC_NEWEEPROM_FMT;
 ahc->bugs |= AHC_SCBCHAN_UPLOAD_BUG;
 ahc->instruction_ram_size = 1024;
 return (0);
}
