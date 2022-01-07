
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mvs_channel {int quirks; int r_mem; } ;
typedef int device_t ;


 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int) ;
 int MVS_Q_SOC65 ;
 int SATA_PHYM3 ;
 int SATA_PHYM4 ;
 int SATA_PHYM9_GEN1 ;
 int SATA_PHYM9_GEN2 ;
 struct mvs_channel* device_get_softc (int ) ;

__attribute__((used)) static void
mvs_errata(device_t dev)
{
 struct mvs_channel *ch = device_get_softc(dev);
 uint32_t val;

 if (ch->quirks & MVS_Q_SOC65) {
  val = ATA_INL(ch->r_mem, SATA_PHYM3);
  val &= ~(0x3 << 27);
  val |= (0x1 << 27);
  val &= ~(0x3 << 29);
  val |= (0x1 << 29);
  ATA_OUTL(ch->r_mem, SATA_PHYM3, val);

  val = ATA_INL(ch->r_mem, SATA_PHYM4);
  val &= ~0x1;
  val |= (0x1 << 16);
  ATA_OUTL(ch->r_mem, SATA_PHYM4, val);

  val = ATA_INL(ch->r_mem, SATA_PHYM9_GEN2);
  val &= ~0xf;
  val |= 0x8;
  val &= ~(0x1 << 14);
  ATA_OUTL(ch->r_mem, SATA_PHYM9_GEN2, val);

  val = ATA_INL(ch->r_mem, SATA_PHYM9_GEN1);
  val &= ~0xf;
  val |= 0x8;
  val &= ~(0x1 << 14);
  ATA_OUTL(ch->r_mem, SATA_PHYM9_GEN1, val);
 }
}
