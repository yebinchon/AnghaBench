
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_entry_t ;



__attribute__((used)) static inline void
vm_map_entry_swap(vm_map_entry_t *a, vm_map_entry_t *b)
{
 vm_map_entry_t tmp;

 tmp = *b;
 *b = *a;
 *a = tmp;
}
