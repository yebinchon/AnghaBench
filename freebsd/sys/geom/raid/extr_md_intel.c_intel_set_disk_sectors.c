
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_raid_disk {int sectors; int sectors_hi; } ;
typedef int off_t ;



__attribute__((used)) static void
intel_set_disk_sectors(struct intel_raid_disk *disk, off_t sectors)
{

 disk->sectors = sectors & 0xffffffff;
 disk->sectors_hi = sectors >> 32;
}
