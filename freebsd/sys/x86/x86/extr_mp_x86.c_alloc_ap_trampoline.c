
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;


 scalar_t__ MiB (int) ;
 int basemem ;
 scalar_t__ bootMP_size ;
 scalar_t__ boot_address ;
 scalar_t__ bootverbose ;
 int memmove (scalar_t__*,scalar_t__*,int) ;
 int printf (char*,scalar_t__) ;
 scalar_t__ round_page (scalar_t__) ;
 scalar_t__ trunc_page (scalar_t__) ;

void
alloc_ap_trampoline(vm_paddr_t *physmap, unsigned int *physmap_idx)
{
 unsigned int i;
 bool allocated;

 allocated = 0;
 for (i = *physmap_idx; i <= *physmap_idx; i -= 2) {





  if (physmap[i] >= MiB(1) ||
      (trunc_page(physmap[i + 1]) - round_page(physmap[i])) <
      round_page(bootMP_size))
   continue;

  allocated = 1;




  if (physmap[i + 1] < MiB(1)) {
   boot_address = trunc_page(physmap[i + 1]);
   if ((physmap[i + 1] - boot_address) < bootMP_size)
    boot_address -= round_page(bootMP_size);
   physmap[i + 1] = boot_address;
  } else {
   boot_address = round_page(physmap[i]);
   physmap[i] = boot_address + round_page(bootMP_size);
  }
  if (physmap[i] == physmap[i + 1] && *physmap_idx != 0) {
   memmove(&physmap[i], &physmap[i + 2],
       sizeof(*physmap) * (*physmap_idx - i + 2));
   *physmap_idx -= 2;
  }
  break;
 }

 if (!allocated) {
  boot_address = basemem * 1024 - bootMP_size;
  if (bootverbose)
   printf(
"Cannot find enough space for the boot trampoline, placing it at %#x",
       boot_address);
 }
}
