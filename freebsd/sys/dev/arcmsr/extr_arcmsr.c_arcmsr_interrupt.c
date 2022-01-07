
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AdapterControlBlock {int adapter_type; int pci_unit; } ;







 int arcmsr_handle_hba_isr (struct AdapterControlBlock*) ;
 int arcmsr_handle_hbb_isr (struct AdapterControlBlock*) ;
 int arcmsr_handle_hbc_isr (struct AdapterControlBlock*) ;
 int arcmsr_handle_hbd_isr (struct AdapterControlBlock*) ;
 int arcmsr_handle_hbe_isr (struct AdapterControlBlock*) ;
 int printf (char*,int,int) ;

__attribute__((used)) static void arcmsr_interrupt(struct AdapterControlBlock *acb)
{
 switch (acb->adapter_type) {
 case 132:
  arcmsr_handle_hba_isr(acb);
  break;
 case 131:
  arcmsr_handle_hbb_isr(acb);
  break;
 case 130:
  arcmsr_handle_hbc_isr(acb);
  break;
 case 129:
  arcmsr_handle_hbd_isr(acb);
  break;
 case 128:
  arcmsr_handle_hbe_isr(acb);
  break;
 default:
  printf("arcmsr%d: interrupt service,"
  " unknown adapter type =%d\n", acb->pci_unit, acb->adapter_type);
  break;
 }
}
