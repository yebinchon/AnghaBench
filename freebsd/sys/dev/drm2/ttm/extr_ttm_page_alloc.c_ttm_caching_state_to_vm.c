
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_memattr_t ;
typedef enum ttm_caching_state { ____Placeholder_ttm_caching_state } ttm_caching_state ;


 int VM_MEMATTR_UNCACHEABLE ;
 int VM_MEMATTR_WRITE_BACK ;
 int VM_MEMATTR_WRITE_COMBINING ;
 int panic (char*,int) ;




__attribute__((used)) static vm_memattr_t
ttm_caching_state_to_vm(enum ttm_caching_state cstate)
{

 switch (cstate) {
 case 129:
  return (VM_MEMATTR_UNCACHEABLE);
 case 128:
  return (VM_MEMATTR_WRITE_COMBINING);
 case 130:
  return (VM_MEMATTR_WRITE_BACK);
 }
 panic("caching state %d\n", cstate);
}
