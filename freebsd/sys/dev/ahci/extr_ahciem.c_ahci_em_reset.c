
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_enclosure {int channels; int r_memc; } ;
typedef int device_t ;


 int AHCI_EM_RST ;
 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int) ;
 int DELAY (int) ;
 int ahci_em_setleds (int ,int) ;
 struct ahci_enclosure* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
ahci_em_reset(device_t dev)
{
 struct ahci_enclosure *enc;
 int i, timeout;

 enc = device_get_softc(dev);
 ATA_OUTL(enc->r_memc, 0, AHCI_EM_RST);
 timeout = 1000;
 while ((ATA_INL(enc->r_memc, 0) & AHCI_EM_RST) &&
     --timeout > 0)
  DELAY(1000);
 if (timeout == 0) {
  device_printf(dev, "EM timeout\n");
  return (1);
 }
 for (i = 0; i < enc->channels; i++)
  ahci_em_setleds(dev, i);
 return (0);
}
