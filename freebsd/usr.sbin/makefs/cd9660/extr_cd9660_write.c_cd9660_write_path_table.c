
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int* length; unsigned char* name; int parent_number; int first_sector; int * extended_attribute_length; } ;
typedef TYPE_3__ path_table_entry ;
typedef int off_t ;
struct TYPE_13__ {TYPE_5__* rootNode; int sectorSize; int pathTableLength; } ;
typedef TYPE_4__ iso9660_disk ;
struct TYPE_14__ {struct TYPE_14__* ptnext; TYPE_2__* parent; int fileDataSector; TYPE_1__* isoDirRecord; } ;
typedef TYPE_5__ cd9660node ;
struct TYPE_11__ {int ptnumber; } ;
struct TYPE_10__ {int* name_len; TYPE_3__* name; int * ext_attr_length; } ;
typedef int FILE ;


 int CD9660_BLOCKS (int ,int ) ;
 int LITTLE_ENDIAN ;
 int cd9660_721 (int,int ) ;
 int cd9660_722 (int,int ) ;
 int cd9660_731 (int ,int ) ;
 int cd9660_732 (int ,int ) ;
 int cd9660_write_filedata (TYPE_4__*,int *,int ,unsigned char*,int) ;
 unsigned char* ecalloc (int,int ) ;
 int free (unsigned char*) ;
 int memcpy (unsigned char*,TYPE_3__*,int) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static int
cd9660_write_path_table(iso9660_disk *diskStructure, FILE *fd, off_t sector,
    int mode)
{
 int path_table_sectors = CD9660_BLOCKS(diskStructure->sectorSize,
     diskStructure->pathTableLength);
 unsigned char *buffer;
 unsigned char *buffer_head;
 int len, ret;
 path_table_entry temp_entry;
 cd9660node *ptcur;

 buffer = ecalloc(path_table_sectors, diskStructure->sectorSize);
 buffer_head = buffer;

 ptcur = diskStructure->rootNode;

 while (ptcur != ((void*)0)) {
  memset(&temp_entry, 0, sizeof(path_table_entry));
  temp_entry.length[0] = ptcur->isoDirRecord->name_len[0];
  temp_entry.extended_attribute_length[0] =
      ptcur->isoDirRecord->ext_attr_length[0];
  memcpy(temp_entry.name, ptcur->isoDirRecord->name,
      temp_entry.length[0] + 1);


  len = temp_entry.length[0] + 8 + (temp_entry.length[0] & 0x01);


  if (mode == LITTLE_ENDIAN) {
   cd9660_731(ptcur->fileDataSector,
       temp_entry.first_sector);
   cd9660_721((ptcur->parent == ((void*)0) ?
    1 : ptcur->parent->ptnumber),
       temp_entry.parent_number);
  } else {
   cd9660_732(ptcur->fileDataSector,
       temp_entry.first_sector);
   cd9660_722((ptcur->parent == ((void*)0) ?
    1 : ptcur->parent->ptnumber),
       temp_entry.parent_number);
  }


  memcpy(buffer, &temp_entry, len);
  buffer += len;

  ptcur = ptcur->ptnext;
 }

 ret = cd9660_write_filedata(diskStructure, fd, sector, buffer_head,
     path_table_sectors);
 free(buffer_head);
 return ret;
}
