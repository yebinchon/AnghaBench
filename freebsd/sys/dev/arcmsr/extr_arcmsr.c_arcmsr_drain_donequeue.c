
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int16_t ;
struct CommandControlBlock {scalar_t__ srb_state; struct AdapterControlBlock* acb; } ;
struct AdapterControlBlock {int adapter_type; int vir2phy_offset; int pci_unit; int srboutstandingcount; struct CommandControlBlock** psrb_pool; } ;







 scalar_t__ ARCMSR_SRB_START ;
 scalar_t__ ARCMSR_SRB_TIMEOUT ;
 int arcmsr_free_srb (struct CommandControlBlock*) ;
 int arcmsr_report_srb_state (struct AdapterControlBlock*,struct CommandControlBlock*,int ) ;
 int printf (char*,int,struct CommandControlBlock*,...) ;

__attribute__((used)) static void arcmsr_drain_donequeue(struct AdapterControlBlock *acb, u_int32_t flag_srb, u_int16_t error)
{
 struct CommandControlBlock *srb;


 switch (acb->adapter_type) {
 case 132:
 case 131:
  srb = (struct CommandControlBlock *)(acb->vir2phy_offset+(flag_srb << 5));
  break;
 case 130:
 case 129:
  srb = (struct CommandControlBlock *)(acb->vir2phy_offset+(flag_srb & 0xFFFFFFE0));
  break;
 case 128:
  srb = acb->psrb_pool[flag_srb];
  break;
 default:
  srb = (struct CommandControlBlock *)(acb->vir2phy_offset+(flag_srb << 5));
  break;
 }
 if((srb->acb != acb) || (srb->srb_state != ARCMSR_SRB_START)) {
  if(srb->srb_state == ARCMSR_SRB_TIMEOUT) {
   arcmsr_free_srb(srb);
   printf("arcmsr%d: srb='%p' return srb has been timeouted\n", acb->pci_unit, srb);
   return;
  }
  printf("arcmsr%d: return srb has been completed\n"
   "srb='%p' srb_state=0x%x outstanding srb count=%d \n",
   acb->pci_unit, srb, srb->srb_state, acb->srboutstandingcount);
  return;
 }
 arcmsr_report_srb_state(acb, srb, error);
}
