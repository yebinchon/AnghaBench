
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_size_t ;
typedef scalar_t__ vm_offset_t ;
struct TYPE_2__ {scalar_t__ om_start; int om_tte; int om_size; } ;


 int KERN_SUCCESS ;
 int MAP_NOFAULT ;
 int TD_V ;
 int VMFS_NO_SPACE ;
 scalar_t__ VM_MAX_PROM_ADDRESS ;
 scalar_t__ VM_MIN_PROM_ADDRESS ;
 int VM_PROT_ALL ;
 int kernel_map ;
 int panic (char*) ;
 TYPE_1__* translations ;
 int translations_size ;
 int vm_map_find (int ,int *,int ,scalar_t__*,int ,int ,int ,int ,int ,int ) ;

void
pmap_init(void)
{
 vm_offset_t addr;
 vm_size_t size;
 int result;
 int i;

 for (i = 0; i < translations_size; i++) {
  addr = translations[i].om_start;
  size = translations[i].om_size;
  if ((translations[i].om_tte & TD_V) == 0)
   continue;
  if (addr < VM_MIN_PROM_ADDRESS || addr > VM_MAX_PROM_ADDRESS)
   continue;
  result = vm_map_find(kernel_map, ((void*)0), 0, &addr, size, 0,
      VMFS_NO_SPACE, VM_PROT_ALL, VM_PROT_ALL, MAP_NOFAULT);
  if (result != KERN_SUCCESS || addr != translations[i].om_start)
   panic("pmap_init: vm_map_find");
 }
}
