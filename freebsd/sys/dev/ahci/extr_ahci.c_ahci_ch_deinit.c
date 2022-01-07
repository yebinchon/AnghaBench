
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_channel {int r_mem; } ;
typedef int device_t ;


 int AHCI_P_CMD ;
 int AHCI_P_CMD_SLUMBER ;
 int AHCI_P_IE ;
 int AHCI_P_SCTL ;
 int ATA_OUTL (int ,int ,int ) ;
 int ATA_SC_DET_DISABLE ;
 int DELAY (int) ;
 int ahci_stop (struct ahci_channel*) ;
 int ahci_stop_fr (struct ahci_channel*) ;
 struct ahci_channel* device_get_softc (int ) ;

__attribute__((used)) static int
ahci_ch_deinit(device_t dev)
{
 struct ahci_channel *ch = device_get_softc(dev);


 ATA_OUTL(ch->r_mem, AHCI_P_IE, 0);

 ahci_stop(ch);
 ahci_stop_fr(ch);
 ATA_OUTL(ch->r_mem, AHCI_P_CMD, 0);

 ATA_OUTL(ch->r_mem, AHCI_P_SCTL, 0);

 ATA_OUTL(ch->r_mem, AHCI_P_CMD, AHCI_P_CMD_SLUMBER);
 DELAY(100);

 ATA_OUTL(ch->r_mem, AHCI_P_SCTL, ATA_SC_DET_DISABLE);
 return (0);
}
