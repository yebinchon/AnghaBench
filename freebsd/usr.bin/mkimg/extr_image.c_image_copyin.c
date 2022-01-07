
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct stat {int st_mode; } ;
typedef int lba_t ;


 int S_ISREG (int ) ;
 int fstat (int,struct stat*) ;
 int image_chunk_skipto (int ) ;
 int image_copyin_mapped (int ,int,int *) ;
 int image_copyin_stream (int ,int,int *) ;

int
image_copyin(lba_t blk, int fd, uint64_t *sizep)
{
 struct stat sb;
 int error;

 error = image_chunk_skipto(blk);
 if (!error) {
  if (fstat(fd, &sb) == -1 || !S_ISREG(sb.st_mode))
   error = image_copyin_stream(blk, fd, sizep);
  else
   error = image_copyin_mapped(blk, fd, sizep);
 }
 return (error);
}
