
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pm_write; int pm_read; int status; } ;
struct ata_channel {scalar_t__ unit; int flags; TYPE_1__ hw; } ;
typedef int device_t ;


 int ATA_PERIODIC_POLL ;
 int ATA_SATA ;
 int ATA_SERROR ;
 int ENXIO ;
 scalar_t__ ata_pci_ch_attach (int ) ;
 int ata_sata_scr_write (struct ata_channel*,int,int ,int) ;
 int ata_via_sata_scr_read ;
 int ata_via_sata_scr_write ;
 int ata_via_sata_status ;
 struct ata_channel* device_get_softc (int ) ;

__attribute__((used)) static int
ata_via_sata_ch_attach(device_t dev)
{
 struct ata_channel *ch = device_get_softc(dev);

 if (ata_pci_ch_attach(dev))
  return ENXIO;
 if (ch->unit == 0) {
  ch->hw.status = ata_via_sata_status;
  ch->hw.pm_read = ata_via_sata_scr_read;
  ch->hw.pm_write = ata_via_sata_scr_write;
  ch->flags |= ATA_PERIODIC_POLL;
  ch->flags |= ATA_SATA;
  ata_sata_scr_write(ch, 0, ATA_SERROR, 0xffffffff);
  ata_sata_scr_write(ch, 1, ATA_SERROR, 0xffffffff);
 }
 return (0);
}
