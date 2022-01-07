
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
struct bios_smap {int type; int length; int base; } ;


 int RB_VERBOSE ;
 scalar_t__ SMAP_TYPE_MEMORY ;
 int add_physmap_entry (int ,int ,int *,int*) ;
 int boothowto ;
 int printf (char*,int,int ,int ) ;

__attribute__((used)) static int
add_smap_entry(struct bios_smap *smap, vm_paddr_t *physmap, int *physmap_idxp)
{
 if (boothowto & RB_VERBOSE)
  printf("SMAP type=%02x base=%016llx len=%016llx\n",
      smap->type, smap->base, smap->length);

 if (smap->type != SMAP_TYPE_MEMORY)
  return (1);

 return (add_physmap_entry(smap->base, smap->length, physmap,
     physmap_idxp));
}
