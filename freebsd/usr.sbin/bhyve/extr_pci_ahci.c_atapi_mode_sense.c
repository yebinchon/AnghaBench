
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ahci_port {int sense_key; int asc; } ;
typedef int buf ;


 int ATA_I_CMD ;
 int ATA_I_IN ;
 void* ATA_SENSE_ILLEGAL_REQUEST ;
 int ATA_S_DSC ;
 int ATA_S_ERROR ;
 int ATA_S_READY ;


 int ahci_write_fis_d2h (struct ahci_port*,int,int*,int) ;
 int be16dec (int*) ;
 int be16enc (int*,int) ;
 int memset (int*,int ,int) ;
 int write_prdt (struct ahci_port*,int,int*,int*,int) ;

__attribute__((used)) static void
atapi_mode_sense(struct ahci_port *p, int slot, uint8_t *cfis)
{
 uint8_t *acmd;
 uint32_t tfd;
 uint8_t pc, code;
 int len;

 acmd = cfis + 0x40;
 len = be16dec(acmd + 7);
 pc = acmd[2] >> 6;
 code = acmd[2] & 0x3f;

 switch (pc) {
 case 0:
  switch (code) {
  case 128:
  {
   uint8_t buf[16];

   if (len > sizeof(buf))
    len = sizeof(buf);

   memset(buf, 0, sizeof(buf));
   be16enc(buf, 16 - 2);
   buf[2] = 0x70;
   buf[8] = 0x01;
   buf[9] = 16 - 10;
   buf[11] = 0x05;
   write_prdt(p, slot, cfis, buf, len);
   tfd = ATA_S_READY | ATA_S_DSC;
   break;
  }
  case 129:
  {
   uint8_t buf[30];

   if (len > sizeof(buf))
    len = sizeof(buf);

   memset(buf, 0, sizeof(buf));
   be16enc(buf, 30 - 2);
   buf[2] = 0x70;
   buf[8] = 0x2A;
   buf[9] = 30 - 10;
   buf[10] = 0x08;
   buf[12] = 0x71;
   be16enc(&buf[18], 2);
   be16enc(&buf[20], 512);
   write_prdt(p, slot, cfis, buf, len);
   tfd = ATA_S_READY | ATA_S_DSC;
   break;
  }
  default:
   goto error;
   break;
  }
  break;
 case 3:
  p->sense_key = ATA_SENSE_ILLEGAL_REQUEST;
  p->asc = 0x39;
  tfd = (p->sense_key << 12) | ATA_S_READY | ATA_S_ERROR;
  break;
error:
 case 1:
 case 2:
  p->sense_key = ATA_SENSE_ILLEGAL_REQUEST;
  p->asc = 0x24;
  tfd = (p->sense_key << 12) | ATA_S_READY | ATA_S_ERROR;
  break;
 }
 cfis[4] = (cfis[4] & ~7) | ATA_I_CMD | ATA_I_IN;
 ahci_write_fis_d2h(p, slot, cfis, tfd);
}
