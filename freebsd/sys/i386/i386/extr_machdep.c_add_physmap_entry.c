
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int uint64_t ;
typedef int u_int ;


 int PHYS_AVAIL_ENTRIES ;
 int RB_VERBOSE ;
 int above24g_allow ;
 int above4g_allow ;
 int boothowto ;
 int pae_mode ;
 int printf (char*,...) ;

__attribute__((used)) static int
add_physmap_entry(uint64_t base, uint64_t length, vm_paddr_t *physmap,
    int *physmap_idxp)
{
 uint64_t lim, ign;
 int i, insert_idx, physmap_idx;

 physmap_idx = *physmap_idxp;

 if (length == 0)
  return (1);

 lim = 0x100000000;
 if (pae_mode && above4g_allow)
  lim = above24g_allow ? -1ULL : 0x600000000;
 if (base >= lim) {
  printf("%uK of memory above %uGB ignored, pae %d "
      "above4g_allow %d above24g_allow %d\n",
      (u_int)(length / 1024), (u_int)(lim >> 30), pae_mode,
      above4g_allow, above24g_allow);
  return (1);
 }
 if (base + length >= lim) {
  ign = base + length - lim;
  length -= ign;
  printf("%uK of memory above %uGB ignored, pae %d "
      "above4g_allow %d above24g_allow %d\n",
      (u_int)(ign / 1024), (u_int)(lim >> 30), pae_mode,
      above4g_allow, above24g_allow);
 }





 insert_idx = physmap_idx + 2;
 for (i = 0; i <= physmap_idx; i += 2) {
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


 if (insert_idx <= physmap_idx && base + length == physmap[insert_idx]) {
  physmap[insert_idx] = base;
  return (1);
 }


 if (insert_idx > 0 && base == physmap[insert_idx - 1]) {
  physmap[insert_idx - 1] += length;
  return (1);
 }

 physmap_idx += 2;
 *physmap_idxp = physmap_idx;
 if (physmap_idx == PHYS_AVAIL_ENTRIES) {
  printf(
  "Too many segments in the physical address map, giving up\n");
  return (0);
 }





 for (i = physmap_idx; i > insert_idx; i -= 2) {
  physmap[i] = physmap[i - 2];
  physmap[i + 1] = physmap[i - 1];
 }


 physmap[insert_idx] = base;
 physmap[insert_idx + 1] = base + length;
 return (1);
}
