
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int assert (int) ;
 int err (int,char*) ;
 int write (int,char const*,size_t) ;

__attribute__((used)) static void
writex(int fd, const char *buf, size_t size)
{
 ssize_t ret;

 do {
  ret = write(fd, buf, size);
  if (ret == -1)
   err(1, "write");
  assert((size_t)ret <= size);
  size -= ret;
  buf += ret;
 } while (size > 0);
}
