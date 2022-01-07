
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AdapterControlBlock {int adapter_type; } ;







 int arcmsr_abort_hba_allcmd (struct AdapterControlBlock*) ;
 int arcmsr_abort_hbb_allcmd (struct AdapterControlBlock*) ;
 int arcmsr_abort_hbc_allcmd (struct AdapterControlBlock*) ;
 int arcmsr_abort_hbd_allcmd (struct AdapterControlBlock*) ;
 int arcmsr_abort_hbe_allcmd (struct AdapterControlBlock*) ;

__attribute__((used)) static void arcmsr_abort_allcmd(struct AdapterControlBlock *acb)
{
 switch (acb->adapter_type) {
 case 132: {
   arcmsr_abort_hba_allcmd(acb);
  }
  break;
 case 131: {
   arcmsr_abort_hbb_allcmd(acb);
  }
  break;
 case 130: {
   arcmsr_abort_hbc_allcmd(acb);
  }
  break;
 case 129: {
   arcmsr_abort_hbd_allcmd(acb);
  }
  break;
 case 128: {
   arcmsr_abort_hbe_allcmd(acb);
  }
  break;
 }
}
