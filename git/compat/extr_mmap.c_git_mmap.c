
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;


 int EACCES ;
 int ENOMEM ;
 void* MAP_FAILED ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int die (char*) ;
 int errno ;
 int free (void*) ;
 int memset (char*,int ,size_t) ;
 void* xmalloc (size_t) ;
 scalar_t__ xpread (int,char*,size_t,scalar_t__) ;

void *git_mmap(void *start, size_t length, int prot, int flags, int fd, off_t offset)
{
 size_t n = 0;

 if (start != ((void*)0) || flags != MAP_PRIVATE || prot != PROT_READ)
  die("Invalid usage of mmap when built with NO_MMAP");

 start = xmalloc(length);
 if (start == ((void*)0)) {
  errno = ENOMEM;
  return MAP_FAILED;
 }

 while (n < length) {
  ssize_t count = xpread(fd, (char *)start + n, length - n, offset + n);

  if (count == 0) {
   memset((char *)start+n, 0, length-n);
   break;
  }

  if (count < 0) {
   free(start);
   errno = EACCES;
   return MAP_FAILED;
  }

  n += count;
 }

 return start;
}
