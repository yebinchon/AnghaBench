
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ahci_port {char* ident; int xfermode; int ssts; int atapi; } ;
typedef int buf ;


 int ATA_E_ABORT ;
 int ATA_SATA_GEN1 ;
 int ATA_SATA_GEN2 ;
 int ATA_SATA_GEN3 ;
 int ATA_SS_SPD_MASK ;
 int ATA_SUPPORT_NOP ;
 int ATA_SUPPORT_PACKET ;
 int ATA_SUPPORT_POWERMGT ;
 int ATA_SUPPORT_RESET ;
 int ATA_S_DSC ;
 int ATA_S_ERROR ;
 int ATA_S_READY ;
 int ATA_UDMA0 ;
 int ATA_WDMA0 ;
 int ahci_checksum (int *,int) ;
 int ahci_write_fis_d2h (struct ahci_port*,int,int *,int) ;
 int ahci_write_fis_piosetup (struct ahci_port*) ;
 int ata_string (int *,char*,int) ;
 int memset (int*,int ,int) ;
 int write_prdt (struct ahci_port*,int,int *,void*,int) ;

__attribute__((used)) static void
handle_atapi_identify(struct ahci_port *p, int slot, uint8_t *cfis)
{
 if (!p->atapi) {
  ahci_write_fis_d2h(p, slot, cfis,
      (ATA_E_ABORT << 8) | ATA_S_READY | ATA_S_ERROR);
 } else {
  uint16_t buf[256];

  memset(buf, 0, sizeof(buf));
  buf[0] = (2 << 14 | 5 << 8 | 1 << 7 | 2 << 5);
  ata_string((uint8_t *)(buf+10), p->ident, 20);
  ata_string((uint8_t *)(buf+23), "001", 8);
  ata_string((uint8_t *)(buf+27), "BHYVE SATA DVD ROM", 40);
  buf[49] = (1 << 9 | 1 << 8);
  buf[50] = (1 << 14 | 1);
  buf[53] = (1 << 2 | 1 << 1);
  buf[62] = 0x3f;
  buf[63] = 7;
  if (p->xfermode & ATA_WDMA0)
   buf[63] |= (1 << ((p->xfermode & 7) + 8));
  buf[64] = 3;
  buf[65] = 120;
  buf[66] = 120;
  buf[67] = 120;
  buf[68] = 120;
  buf[76] = (ATA_SATA_GEN1 | ATA_SATA_GEN2 | ATA_SATA_GEN3);
  buf[77] = ((p->ssts & ATA_SS_SPD_MASK) >> 3);
  buf[78] = (1 << 5);
  buf[80] = 0x3f0;
  buf[82] = (ATA_SUPPORT_POWERMGT | ATA_SUPPORT_PACKET |
      ATA_SUPPORT_RESET | ATA_SUPPORT_NOP);
  buf[83] = (1 << 14);
  buf[84] = (1 << 14);
  buf[85] = (ATA_SUPPORT_POWERMGT | ATA_SUPPORT_PACKET |
      ATA_SUPPORT_RESET | ATA_SUPPORT_NOP);
  buf[87] = (1 << 14);
  buf[88] = 0x7f;
  if (p->xfermode & ATA_UDMA0)
   buf[88] |= (1 << ((p->xfermode & 7) + 8));
  buf[222] = 0x1020;
  buf[255] = 0x00a5;
  ahci_checksum((uint8_t *)buf, sizeof(buf));
  ahci_write_fis_piosetup(p);
  write_prdt(p, slot, cfis, (void *)buf, sizeof(buf));
  ahci_write_fis_d2h(p, slot, cfis, ATA_S_DSC | ATA_S_READY);
 }
}
