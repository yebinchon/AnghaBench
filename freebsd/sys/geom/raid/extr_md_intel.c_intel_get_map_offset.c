
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_raid_map {scalar_t__ offset; scalar_t__ offset_hi; } ;
typedef int off_t ;



__attribute__((used)) static off_t
intel_get_map_offset(struct intel_raid_map *mmap)
{
 off_t offset = (off_t)mmap->offset_hi << 32;

 offset += mmap->offset;
 return (offset);
}
