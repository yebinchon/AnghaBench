
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t off_t ;


 int errno ;
 int image_copyout_memory (int,size_t,char*) ;
 void* image_file_map (int,size_t,size_t,size_t*) ;
 int image_file_unmap (void*,size_t) ;
 size_t image_swap_pgsz ;
 size_t secsz ;

__attribute__((used)) static int
image_copyout_file(int fd, size_t size, int ifd, off_t iofs)
{
 void *mp;
 char *buf;
 size_t iosz, sz;
 int error;
 off_t iof;

 iosz = secsz * image_swap_pgsz;

 while (size > 0) {
  sz = (size > iosz) ? iosz : size;
  buf = mp = image_file_map(ifd, iofs, sz, &iof);
  if (buf == ((void*)0))
   return (errno);
  buf += iof;
  error = image_copyout_memory(fd, sz, buf);
  image_file_unmap(mp, sz);
  if (error)
   return (error);
  size -= sz;
  iofs += sz;
 }
 return (0);
}
