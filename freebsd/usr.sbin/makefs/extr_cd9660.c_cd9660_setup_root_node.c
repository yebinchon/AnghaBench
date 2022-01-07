
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* rootNode; } ;
typedef TYPE_2__ iso9660_disk ;
struct TYPE_4__ {int isoDirRecord; } ;


 int ISO_FLAG_DIRECTORY ;
 int cd9660_populate_iso_dir_record (int ,int ,int ,int,char*) ;

__attribute__((used)) static void
cd9660_setup_root_node(iso9660_disk *diskStructure)
{
 cd9660_populate_iso_dir_record(diskStructure->rootNode->isoDirRecord,
     0, ISO_FLAG_DIRECTORY, 1, "\0");

}
