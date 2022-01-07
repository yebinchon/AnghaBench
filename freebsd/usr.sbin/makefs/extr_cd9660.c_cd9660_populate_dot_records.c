
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* rootNode; } ;
typedef TYPE_2__ iso9660_disk ;
struct TYPE_11__ {TYPE_8__* dot_dot_record; TYPE_1__* parent; int isoDirRecord; int fileDataSector; TYPE_8__* dot_record; } ;
typedef TYPE_3__ cd9660node ;
struct TYPE_13__ {void* fileRecordSize; TYPE_4__* isoDirRecord; int fileDataSector; } ;
struct TYPE_12__ {int* name_len; int* name; int* length; } ;
struct TYPE_9__ {int isoDirRecord; int fileDataSector; } ;


 void* cd9660_compute_record_size (TYPE_2__*,TYPE_8__*) ;
 int memcpy (TYPE_4__*,int ,int) ;

__attribute__((used)) static void
cd9660_populate_dot_records(iso9660_disk *diskStructure, cd9660node *node)
{
 node->dot_record->fileDataSector = node->fileDataSector;
 memcpy(node->dot_record->isoDirRecord,node->isoDirRecord, 34);
 node->dot_record->isoDirRecord->name_len[0] = 1;
 node->dot_record->isoDirRecord->name[0] = 0;
 node->dot_record->isoDirRecord->name[1] = 0;
 node->dot_record->isoDirRecord->length[0] = 34;
 node->dot_record->fileRecordSize =
     cd9660_compute_record_size(diskStructure, node->dot_record);

 if (node == diskStructure->rootNode) {
  node->dot_dot_record->fileDataSector = node->fileDataSector;
  memcpy(node->dot_dot_record->isoDirRecord,node->isoDirRecord,
      34);
 } else {
  node->dot_dot_record->fileDataSector =
      node->parent->fileDataSector;
  memcpy(node->dot_dot_record->isoDirRecord,
      node->parent->isoDirRecord,34);
 }
 node->dot_dot_record->isoDirRecord->name_len[0] = 1;
 node->dot_dot_record->isoDirRecord->name[0] = 1;
 node->dot_dot_record->isoDirRecord->name[1] = 0;
 node->dot_dot_record->isoDirRecord->length[0] = 34;
 node->dot_dot_record->fileRecordSize =
     cd9660_compute_record_size(diskStructure, node->dot_dot_record);
}
