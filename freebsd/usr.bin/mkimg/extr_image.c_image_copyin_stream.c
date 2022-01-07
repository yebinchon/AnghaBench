
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int ssize_t ;
typedef long long off_t ;
typedef int lba_t ;


 int errno ;
 int image_chunk_copyin (int,char*,int,long long,int ) ;
 char* image_file_map (int ,long long,size_t,long long*) ;
 int image_file_unmap (char*,size_t) ;
 long long image_swap_alloc (size_t) ;
 int image_swap_fd ;
 int image_swap_pgsz ;
 int read (int,char*,size_t) ;
 int secsz ;

__attribute__((used)) static int
image_copyin_stream(lba_t blk, int fd, uint64_t *sizep)
{
 char *buffer;
 uint64_t bytesize;
 off_t swofs;
 size_t iosz;
 ssize_t rdsz;
 int error;
 off_t iof;







 iosz = secsz * image_swap_pgsz;

 bytesize = 0;
 do {
  swofs = image_swap_alloc(iosz);
  if (swofs == -1LL)
   return (errno);
  buffer = image_file_map(image_swap_fd, swofs, iosz, &iof);
  if (buffer == ((void*)0))
   return (errno);
  rdsz = read(fd, &buffer[iof], iosz);
  if (rdsz > 0)
   error = image_chunk_copyin(blk, &buffer[iof], rdsz, swofs,
       image_swap_fd);
  else if (rdsz < 0)
   error = errno;
  else
   error = 0;
  image_file_unmap(buffer, iosz);

  if (error)
   return (error);

  bytesize += rdsz;
  blk += (rdsz + secsz - 1) / secsz;
 } while (rdsz > 0);

 if (sizep != ((void*)0))
  *sizep = bytesize;
 return (0);
}
