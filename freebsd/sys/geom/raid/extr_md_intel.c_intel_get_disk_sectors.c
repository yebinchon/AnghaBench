
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_raid_disk {scalar_t__ sectors; scalar_t__ sectors_hi; } ;
typedef int off_t ;



__attribute__((used)) static off_t
intel_get_disk_sectors(struct intel_raid_disk *disk)
{
 off_t sectors = (off_t)disk->sectors_hi << 32;

 sectors += disk->sectors;
 return (sectors);
}
