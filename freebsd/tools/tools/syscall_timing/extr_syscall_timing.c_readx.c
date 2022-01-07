
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int assert (int) ;
 int err (int,char*) ;
 int read (int,char*,size_t) ;

__attribute__((used)) static void
readx(int fd, char *buf, size_t size)
{
 ssize_t ret;

 do {
  ret = read(fd, buf, size);
  if (ret == -1)
   err(1, "read");
  assert((size_t)ret <= size);
  size -= ret;
  buf += ret;
 } while (size > 0);
}
