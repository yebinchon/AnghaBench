
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ uint64_t ;
typedef int u_int ;


 int PHYS_AVAIL_ENTRIES ;
 int RB_VERBOSE ;
 int boothowto ;
 int printf (char*,...) ;

__attribute__((used)) static int
add_physmap_entry(uint64_t base, uint64_t length, vm_paddr_t *physmap,
    u_int *physmap_idxp)
{
 u_int i, insert_idx, _physmap_idx;

 _physmap_idx = *physmap_idxp;

 if (length == 0)
  return (1);





 insert_idx = _physmap_idx;
 for (i = 0; i <= _physmap_idx; i += 2) {
  if (base < physmap[i + 1]) {
   if (base + length <= physmap[i]) {
    insert_idx = i;
    break;
   }
   if (boothowto & RB_VERBOSE)
    printf(
      "Overlapping memory regions, ignoring second region\n");
   return (1);
  }
 }


 if (insert_idx <= _physmap_idx &&
     base + length == physmap[insert_idx]) {
  physmap[insert_idx] = base;
  return (1);
 }


 if (insert_idx > 0 && base == physmap[insert_idx - 1]) {
  physmap[insert_idx - 1] += length;
  return (1);
 }

 _physmap_idx += 2;
 *physmap_idxp = _physmap_idx;
 if (_physmap_idx == PHYS_AVAIL_ENTRIES) {
  printf(
  "Too many segments in the physical address map, giving up\n");
  return (0);
 }





 for (i = _physmap_idx; i > insert_idx; i -= 2) {
  physmap[i] = physmap[i - 2];
  physmap[i + 1] = physmap[i - 1];
 }


 physmap[insert_idx] = base;
 physmap[insert_idx + 1] = base + length;

 printf("physmap[%d] = 0x%016lx\n", insert_idx, base);
 printf("physmap[%d] = 0x%016lx\n", insert_idx + 1, base + length);
 return (1);
}
