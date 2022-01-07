
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CommandControlBlock {int dummy; } ;
struct AdapterControlBlock {int adapter_type; } ;







 int arcmsr_polling_hba_srbdone (struct AdapterControlBlock*,struct CommandControlBlock*) ;
 int arcmsr_polling_hbb_srbdone (struct AdapterControlBlock*,struct CommandControlBlock*) ;
 int arcmsr_polling_hbc_srbdone (struct AdapterControlBlock*,struct CommandControlBlock*) ;
 int arcmsr_polling_hbd_srbdone (struct AdapterControlBlock*,struct CommandControlBlock*) ;
 int arcmsr_polling_hbe_srbdone (struct AdapterControlBlock*,struct CommandControlBlock*) ;

__attribute__((used)) static void arcmsr_polling_srbdone(struct AdapterControlBlock *acb, struct CommandControlBlock *poll_srb)
{
 switch (acb->adapter_type) {
 case 132: {
   arcmsr_polling_hba_srbdone(acb, poll_srb);
  }
  break;
 case 131: {
   arcmsr_polling_hbb_srbdone(acb, poll_srb);
  }
  break;
 case 130: {
   arcmsr_polling_hbc_srbdone(acb, poll_srb);
  }
  break;
 case 129: {
   arcmsr_polling_hbd_srbdone(acb, poll_srb);
  }
  break;
 case 128: {
   arcmsr_polling_hbe_srbdone(acb, poll_srb);
  }
  break;
 }
}
