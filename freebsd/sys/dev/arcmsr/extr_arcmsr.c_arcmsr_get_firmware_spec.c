
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AdapterControlBlock {int adapter_type; } ;







 int arcmsr_get_hba_config (struct AdapterControlBlock*) ;
 int arcmsr_get_hbb_config (struct AdapterControlBlock*) ;
 int arcmsr_get_hbc_config (struct AdapterControlBlock*) ;
 int arcmsr_get_hbd_config (struct AdapterControlBlock*) ;
 int arcmsr_get_hbe_config (struct AdapterControlBlock*) ;

__attribute__((used)) static void arcmsr_get_firmware_spec(struct AdapterControlBlock *acb)
{
 switch (acb->adapter_type) {
 case 132: {
   arcmsr_get_hba_config(acb);
  }
  break;
 case 131: {
   arcmsr_get_hbb_config(acb);
  }
  break;
 case 130: {
   arcmsr_get_hbc_config(acb);
  }
  break;
 case 129: {
   arcmsr_get_hbd_config(acb);
  }
  break;
 case 128: {
   arcmsr_get_hbe_config(acb);
  }
  break;
 }
}
