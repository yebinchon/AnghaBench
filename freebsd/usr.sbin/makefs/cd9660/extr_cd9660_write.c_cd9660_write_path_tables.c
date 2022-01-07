
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int primaryBigEndianTableSector; int primaryLittleEndianTableSector; } ;
typedef TYPE_1__ iso9660_disk ;
typedef int FILE ;


 int BIG_ENDIAN ;
 int LITTLE_ENDIAN ;
 scalar_t__ cd9660_write_path_table (TYPE_1__*,int *,int ,int ) ;

__attribute__((used)) static int
cd9660_write_path_tables(iso9660_disk *diskStructure, FILE *fd)
{
 if (cd9660_write_path_table(diskStructure, fd,
     diskStructure->primaryLittleEndianTableSector, LITTLE_ENDIAN) == 0)
  return 0;

 if (cd9660_write_path_table(diskStructure, fd,
     diskStructure->primaryBigEndianTableSector, BIG_ENDIAN) == 0)
  return 0;


 return 1;
}
