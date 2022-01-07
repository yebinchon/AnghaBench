
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_raid_map {int disk_sectors; int disk_sectors_hi; } ;
typedef int off_t ;



__attribute__((used)) static void
intel_set_map_disk_sectors(struct intel_raid_map *mmap, off_t disk_sectors)
{

 mmap->disk_sectors = disk_sectors & 0xffffffff;
 mmap->disk_sectors_hi = disk_sectors >> 32;
}
