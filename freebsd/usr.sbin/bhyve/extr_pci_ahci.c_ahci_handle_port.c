
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_port {int cmd; int ci; int pending; int ccs; int tfd; scalar_t__ waitforclear; } ;


 int AHCI_P_CMD_CCS_MASK ;
 int AHCI_P_CMD_CCS_SHIFT ;
 int AHCI_P_CMD_ST ;
 int ATA_S_BUSY ;
 int ATA_S_DRQ ;
 int ahci_handle_slot (struct ahci_port*,int) ;

__attribute__((used)) static void
ahci_handle_port(struct ahci_port *p)
{

 if (!(p->cmd & AHCI_P_CMD_ST))
  return;





 for (; (p->ci & ~p->pending) != 0; p->ccs = ((p->ccs + 1) & 31)) {
  if ((p->tfd & (ATA_S_BUSY | ATA_S_DRQ)) != 0)
   break;
  if (p->waitforclear)
   break;
  if ((p->ci & ~p->pending & (1 << p->ccs)) != 0) {
   p->cmd &= ~AHCI_P_CMD_CCS_MASK;
   p->cmd |= p->ccs << AHCI_P_CMD_CCS_SHIFT;
   ahci_handle_slot(p, p->ccs);
  }
 }
}
