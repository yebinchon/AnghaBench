
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ahci_port {int tfd; int xfermode; int mult_sectors; int atapi; } ;






 int ATA_DSM_TRIM ;
 int ATA_ERROR_ABORT ;
 int ATA_E_ABORT ;
 int ATA_SFPDMA_DSM ;
 int ATA_S_BUSY ;
 int ATA_S_DSC ;
 int ATA_S_ERROR ;
 int ATA_S_READY ;
 int WPRINTF (char*,int) ;
 int ahci_handle_dsm_trim (struct ahci_port*,int,int*,int ) ;
 int ahci_handle_flush (struct ahci_port*,int,int*) ;
 int ahci_handle_read_log (struct ahci_port*,int,int*) ;
 int ahci_handle_rw (struct ahci_port*,int,int*,int ) ;
 int ahci_write_fis_d2h (struct ahci_port*,int,int*,int) ;
 int handle_atapi_identify (struct ahci_port*,int,int*) ;
 int handle_identify (struct ahci_port*,int,int*) ;
 int handle_packet_cmd (struct ahci_port*,int,int*) ;

__attribute__((used)) static void
ahci_handle_cmd(struct ahci_port *p, int slot, uint8_t *cfis)
{

 p->tfd |= ATA_S_BUSY;
 switch (cfis[2]) {
 case 173:
  handle_identify(p, slot, cfis);
  break;
 case 148:
 {
  switch (cfis[3]) {
  case 143:
   switch (cfis[12]) {
   case 151:
    p->tfd = ATA_S_DSC | ATA_S_READY;
    break;
   default:
    p->tfd = ATA_S_ERROR | ATA_S_READY;
    p->tfd |= (ATA_ERROR_ABORT << 8);
    break;
   }
   break;
  case 142:
  case 145:
  case 144:
  case 146:
   p->tfd = ATA_S_DSC | ATA_S_READY;
   break;
  case 141:
  {
   switch (cfis[12] & 0xf8) {
   case 164:
   case 163:
    break;
   case 135:
   case 136:
    p->xfermode = (cfis[12] & 0x7);
    break;
   }
   p->tfd = ATA_S_DSC | ATA_S_READY;
   break;
  }
  default:
   p->tfd = ATA_S_ERROR | ATA_S_READY;
   p->tfd |= (ATA_ERROR_ABORT << 8);
   break;
  }
  ahci_write_fis_d2h(p, slot, cfis, p->tfd);
  break;
 }
 case 147:
  if (cfis[12] != 0 &&
   (cfis[12] > 128 || (cfis[12] & (cfis[12] - 1)))) {
   p->tfd = ATA_S_ERROR | ATA_S_READY;
   p->tfd |= (ATA_ERROR_ABORT << 8);
  } else {
   p->mult_sectors = cfis[12];
   p->tfd = ATA_S_DSC | ATA_S_READY;
  }
  ahci_write_fis_d2h(p, slot, cfis, p->tfd);
  break;
 case 162:
 case 134:
 case 161:
 case 133:
 case 155:
 case 129:
 case 154:
 case 128:
 case 160:
 case 132:
 case 159:
 case 131:
 case 158:
 case 130:
  ahci_handle_rw(p, slot, cfis, 0);
  break;
 case 170:
 case 169:
  ahci_handle_flush(p, slot, cfis);
  break;
 case 171:
  if (cfis[11] == 0 && cfis[3] == ATA_DSM_TRIM &&
      cfis[13] == 0 && cfis[12] == 1) {
   ahci_handle_dsm_trim(p, slot, cfis, 0);
   break;
  }
  ahci_write_fis_d2h(p, slot, cfis,
      (ATA_E_ABORT << 8) | ATA_S_READY | ATA_S_ERROR);
  break;
 case 149:
  if ((cfis[13] & 0x1f) == ATA_SFPDMA_DSM &&
      cfis[17] == 0 && cfis[16] == ATA_DSM_TRIM &&
      cfis[11] == 0 && cfis[3] == 1) {
   ahci_handle_dsm_trim(p, slot, cfis, 0);
   break;
  }
  ahci_write_fis_d2h(p, slot, cfis,
      (ATA_E_ABORT << 8) | ATA_S_READY | ATA_S_ERROR);
  break;
 case 156:
 case 157:
  ahci_handle_read_log(p, slot, cfis);
  break;
 case 150:
 case 139:
 case 166:
  ahci_write_fis_d2h(p, slot, cfis,
      (ATA_E_ABORT << 8) | ATA_S_READY | ATA_S_ERROR);
  break;
 case 172:
  cfis[12] = 0xff;
  ahci_write_fis_d2h(p, slot, cfis, ATA_S_READY | ATA_S_DSC);
  break;
 case 138:
 case 137:
 case 168:
 case 167:
 case 140:
 case 153:
 case 152:
  ahci_write_fis_d2h(p, slot, cfis, ATA_S_READY | ATA_S_DSC);
  break;
 case 174:
  handle_atapi_identify(p, slot, cfis);
  break;
 case 165:
  if (!p->atapi) {
   ahci_write_fis_d2h(p, slot, cfis,
       (ATA_E_ABORT << 8) | ATA_S_READY | ATA_S_ERROR);
  } else
   handle_packet_cmd(p, slot, cfis);
  break;
 default:
  WPRINTF("Unsupported cmd:%02x\n", cfis[2]);
  ahci_write_fis_d2h(p, slot, cfis,
      (ATA_E_ABORT << 8) | ATA_S_READY | ATA_S_ERROR);
  break;
 }
}
