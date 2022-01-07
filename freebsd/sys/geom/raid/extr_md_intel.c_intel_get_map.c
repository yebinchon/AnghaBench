
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_raid_vol {struct intel_raid_map* map; scalar_t__ migr_state; } ;
struct intel_raid_map {size_t total_disks; int * disk_idx; } ;



__attribute__((used)) static struct intel_raid_map *
intel_get_map(struct intel_raid_vol *mvol, int i)
{
 struct intel_raid_map *mmap;

 if (i > (mvol->migr_state ? 1 : 0))
  return (((void*)0));
 mmap = &mvol->map[0];
 for (; i > 0; i--) {
  mmap = (struct intel_raid_map *)
      &mmap->disk_idx[mmap->total_disks];
 }
 return ((struct intel_raid_map *)mmap);
}
