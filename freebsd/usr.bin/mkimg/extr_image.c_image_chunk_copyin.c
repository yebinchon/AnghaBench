
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t off_t ;
typedef scalar_t__ lba_t ;


 int image_chunk_append (scalar_t__,size_t,size_t,int) ;
 int image_chunk_skipto (scalar_t__) ;
 scalar_t__ is_empty_sector (int *) ;
 size_t secsz ;

__attribute__((used)) static int
image_chunk_copyin(lba_t blk, void *buf, size_t sz, off_t ofs, int fd)
{
 uint8_t *p = buf;
 int error;

 error = 0;
 sz = (sz + secsz - 1) & ~(secsz - 1);
 while (!error && sz > 0) {
  if (is_empty_sector(p))
   error = image_chunk_skipto(blk + 1);
  else
   error = image_chunk_append(blk, secsz, ofs, fd);
  blk++;
  p += secsz;
  sz -= secsz;
  ofs += secsz;
 }
 return (error);
}
