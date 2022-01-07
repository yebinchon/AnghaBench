
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_3__ {int sectorSize; } ;
typedef TYPE_1__ iso9660_disk ;
typedef int FILE ;


 int SEEK_SET ;
 int err (int,char*) ;
 int fseeko (int *,int,int ) ;
 int ftello (int *) ;
 size_t fwrite (unsigned char const*,int,int,int *) ;

__attribute__((used)) static int
cd9660_write_filedata(iso9660_disk *diskStructure, FILE *fd, off_t sector,
    const unsigned char *buf, int numsecs)
{
 off_t curpos;
 size_t success;

 curpos = ftello(fd);

 if (fseeko(fd, sector * diskStructure->sectorSize, SEEK_SET) == -1)
  err(1, "fseeko");

 success = fwrite(buf, diskStructure->sectorSize * numsecs, 1, fd);

 if (fseeko(fd, curpos, SEEK_SET) == -1)
  err(1, "fseeko");

 if (success == 1)
  success = diskStructure->sectorSize * numsecs;
 return success;
}
