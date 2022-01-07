
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_raid_map {scalar_t__ disk_sectors; scalar_t__ disk_sectors_hi; } ;
typedef int off_t ;



__attribute__((used)) static off_t
intel_get_map_disk_sectors(struct intel_raid_map *mmap)
{
 off_t disk_sectors = (off_t)mmap->disk_sectors_hi << 32;

 disk_sectors += mmap->disk_sectors;
 return (disk_sectors);
}
