
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AdapterControlBlock {int adapter_type; } ;







 int arcmsr_flush_hba_cache (struct AdapterControlBlock*) ;
 int arcmsr_flush_hbb_cache (struct AdapterControlBlock*) ;
 int arcmsr_flush_hbc_cache (struct AdapterControlBlock*) ;
 int arcmsr_flush_hbd_cache (struct AdapterControlBlock*) ;
 int arcmsr_flush_hbe_cache (struct AdapterControlBlock*) ;

__attribute__((used)) static void arcmsr_flush_adapter_cache(struct AdapterControlBlock *acb)
{
 switch (acb->adapter_type) {
 case 132: {
   arcmsr_flush_hba_cache(acb);
  }
  break;
 case 131: {
   arcmsr_flush_hbb_cache(acb);
  }
  break;
 case 130: {
   arcmsr_flush_hbc_cache(acb);
  }
  break;
 case 129: {
   arcmsr_flush_hbd_cache(acb);
  }
  break;
 case 128: {
   arcmsr_flush_hbe_cache(acb);
  }
  break;
 }
}
