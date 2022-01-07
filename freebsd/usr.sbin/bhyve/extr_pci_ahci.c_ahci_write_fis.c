
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ahci_port {int cmd; int waitforclear; int is; int * rfis; } ;
typedef enum sata_fis_type { ____Placeholder_sata_fis_type } sata_fis_type ;


 int AHCI_P_CMD_FRE ;
 int AHCI_P_IX_DHR ;
 int AHCI_P_IX_PS ;
 int AHCI_P_IX_SDB ;
 int AHCI_P_IX_TFE ;
 int ATA_S_ERROR ;



 int WPRINTF (char*,int) ;
 int ahci_port_intr (struct ahci_port*) ;
 int memcpy (int *,int*,int) ;

__attribute__((used)) static void
ahci_write_fis(struct ahci_port *p, enum sata_fis_type ft, uint8_t *fis)
{
 int offset, len, irq;

 if (p->rfis == ((void*)0) || !(p->cmd & AHCI_P_CMD_FRE))
  return;

 switch (ft) {
 case 129:
  offset = 0x40;
  len = 20;
  irq = (fis[1] & (1 << 6)) ? AHCI_P_IX_DHR : 0;
  break;
 case 128:
  offset = 0x58;
  len = 8;
  irq = (fis[1] & (1 << 6)) ? AHCI_P_IX_SDB : 0;
  break;
 case 130:
  offset = 0x20;
  len = 20;
  irq = (fis[1] & (1 << 6)) ? AHCI_P_IX_PS : 0;
  break;
 default:
  WPRINTF("unsupported fis type %d\n", ft);
  return;
 }
 if (fis[2] & ATA_S_ERROR) {
  p->waitforclear = 1;
  irq |= AHCI_P_IX_TFE;
 }
 memcpy(p->rfis + offset, fis, len);
 if (irq) {
  if (~p->is & irq) {
   p->is |= irq;
   ahci_port_intr(p);
  }
 }
}
