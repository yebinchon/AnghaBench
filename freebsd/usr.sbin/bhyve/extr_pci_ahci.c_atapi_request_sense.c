
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ahci_port {int sense_key; int asc; } ;
typedef int buf ;


 int ATA_I_CMD ;
 int ATA_I_IN ;
 int ATA_S_DSC ;
 int ATA_S_READY ;
 int ahci_write_fis_d2h (struct ahci_port*,int,int*,int) ;
 int memset (int*,int ,int) ;
 int write_prdt (struct ahci_port*,int,int*,int*,int) ;

__attribute__((used)) static void
atapi_request_sense(struct ahci_port *p, int slot, uint8_t *cfis)
{
 uint8_t buf[64];
 uint8_t *acmd;
 int len;

 acmd = cfis + 0x40;
 len = acmd[4];
 if (len > sizeof(buf))
  len = sizeof(buf);
 memset(buf, 0, len);
 buf[0] = 0x70 | (1 << 7);
 buf[2] = p->sense_key;
 buf[7] = 10;
 buf[12] = p->asc;
 write_prdt(p, slot, cfis, buf, len);
 cfis[4] = (cfis[4] & ~7) | ATA_I_CMD | ATA_I_IN;
 ahci_write_fis_d2h(p, slot, cfis, ATA_S_READY | ATA_S_DSC);
}
