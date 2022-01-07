
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_2__ {int lock; int * entries; } ;


 size_t ARRAYSIZE (int *) ;
 TYPE_1__ vmci_doorbell_it ;
 int vmci_init_lock (int *,char*) ;
 int vmci_list_init (int *) ;

int
vmci_doorbell_init(void)
{
 uint32_t bucket;

 for (bucket = 0; bucket < ARRAYSIZE(vmci_doorbell_it.entries);
     ++bucket)
  vmci_list_init(&vmci_doorbell_it.entries[bucket]);

 return (vmci_init_lock(&vmci_doorbell_it.lock,
     "VMCI Doorbell index table lock"));
}
