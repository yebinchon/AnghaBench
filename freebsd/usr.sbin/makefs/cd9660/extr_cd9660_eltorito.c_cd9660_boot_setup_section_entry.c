
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cd9660_boot_image {int sector; int num_sectors; int loadSegment; int targetMode; } ;
struct TYPE_4__ {int load_rba; int sector_count; int load_segment; int * media_type; int * boot_indicator; } ;
struct TYPE_3__ {TYPE_2__ SE; } ;
struct boot_catalog_entry {TYPE_1__ entry_data; int entry_type; } ;
typedef TYPE_2__ boot_catalog_section_entry ;


 int ET_BOOTABLE ;
 int ET_ENTRY_SE ;
 int cd9660_721 (int ,int ) ;
 int cd9660_731 (int ,int ) ;
 struct boot_catalog_entry* cd9660_init_boot_catalog_entry () ;

__attribute__((used)) static struct boot_catalog_entry *
cd9660_boot_setup_section_entry(struct cd9660_boot_image *disk)
{
 struct boot_catalog_entry *entry;
 boot_catalog_section_entry *se;
 if ((entry = cd9660_init_boot_catalog_entry()) == ((void*)0))
  return ((void*)0);

 entry->entry_type = ET_ENTRY_SE;
 se = &entry->entry_data.SE;

 se->boot_indicator[0] = ET_BOOTABLE;
 se->media_type[0] = disk->targetMode;
 cd9660_721(disk->loadSegment, se->load_segment);
 cd9660_721(disk->num_sectors, se->sector_count);
 cd9660_731(disk->sector, se->load_rba);
 return entry;
}
