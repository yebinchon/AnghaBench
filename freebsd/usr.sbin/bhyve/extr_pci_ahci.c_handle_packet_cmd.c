
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ahci_port {int sense_key; int asc; } ;


 int ATA_I_CMD ;
 int ATA_I_IN ;
 int ATA_SENSE_ILLEGAL_REQUEST ;
 int ATA_S_DSC ;
 int ATA_S_ERROR ;
 int ATA_S_READY ;
 int DPRINTF (char*,...) ;
 int ahci_write_fis_d2h (struct ahci_port*,int,int*,int) ;
 int atapi_get_event_status_notification (struct ahci_port*,int,int*) ;
 int atapi_inquiry (struct ahci_port*,int,int*) ;
 int atapi_mode_sense (struct ahci_port*,int,int*) ;
 int atapi_read (struct ahci_port*,int,int*,int ) ;
 int atapi_read_capacity (struct ahci_port*,int,int*) ;
 int atapi_read_toc (struct ahci_port*,int,int*) ;
 int atapi_report_luns (struct ahci_port*,int,int*) ;
 int atapi_request_sense (struct ahci_port*,int,int*) ;
 int atapi_start_stop_unit (struct ahci_port*,int,int*) ;

__attribute__((used)) static void
handle_packet_cmd(struct ahci_port *p, int slot, uint8_t *cfis)
{
 uint8_t *acmd;

 acmd = cfis + 0x40;
 switch (acmd[0]) {
 case 128:
  cfis[4] = (cfis[4] & ~7) | ATA_I_CMD | ATA_I_IN;
  ahci_write_fis_d2h(p, slot, cfis, ATA_S_READY | ATA_S_DSC);
  break;
 case 138:
  atapi_inquiry(p, slot, cfis);
  break;
 case 133:
  atapi_read_capacity(p, slot, cfis);
  break;
 case 136:

  cfis[4] = (cfis[4] & ~7) | ATA_I_CMD | ATA_I_IN;
  ahci_write_fis_d2h(p, slot, cfis, ATA_S_READY | ATA_S_DSC);
  break;
 case 132:
  atapi_read_toc(p, slot, cfis);
  break;
 case 131:
  atapi_report_luns(p, slot, cfis);
  break;
 case 135:
 case 134:
  atapi_read(p, slot, cfis, 0);
  break;
 case 130:
  atapi_request_sense(p, slot, cfis);
  break;
 case 129:
  atapi_start_stop_unit(p, slot, cfis);
  break;
 case 137:
  atapi_mode_sense(p, slot, cfis);
  break;
 case 139:
  atapi_get_event_status_notification(p, slot, cfis);
  break;
 default:
  cfis[4] = (cfis[4] & ~7) | ATA_I_CMD | ATA_I_IN;
  p->sense_key = ATA_SENSE_ILLEGAL_REQUEST;
  p->asc = 0x20;
  ahci_write_fis_d2h(p, slot, cfis, (p->sense_key << 12) |
    ATA_S_READY | ATA_S_ERROR);
  break;
 }
}
