
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int daddr_t ;
typedef int FILE ;


 int ISO_DEFAULT_BLOCK_SIZE ;
 int SEEK_SET ;
 int errno ;
 int fread (char*,int,int,int *) ;
 scalar_t__ fseek (int *,int,int ) ;

__attribute__((used)) static int
read_sector(FILE *iso, daddr_t sector, char *buffer)
{

 if (fseek(iso, sector * ISO_DEFAULT_BLOCK_SIZE, SEEK_SET) != 0) {
  return (errno);
 }
 if (fread(buffer, ISO_DEFAULT_BLOCK_SIZE, 1, iso) != 1) {
  return (errno);
 }
 return (0);
}
