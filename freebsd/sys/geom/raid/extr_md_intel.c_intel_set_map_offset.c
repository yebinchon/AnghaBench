
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_raid_map {int offset; int offset_hi; } ;
typedef int off_t ;



__attribute__((used)) static void
intel_set_map_offset(struct intel_raid_map *mmap, off_t offset)
{

 mmap->offset = offset & 0xffffffff;
 mmap->offset_hi = offset >> 32;
}
