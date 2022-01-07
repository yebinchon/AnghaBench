
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 size_t MIN (size_t,size_t) ;
 scalar_t__ SSIZE_MAX ;
 int read (int,char*,size_t) ;

__attribute__((used)) static ssize_t
read_retry(int fd, void *buf, size_t sz)
{
 char *cp = buf;
 size_t left = MIN(sz, (size_t) SSIZE_MAX);

 while (left > 0) {
  ssize_t ret;

  ret = read(fd, cp, left);
  if (ret == -1) {
   return ret;
  } else if (ret == 0) {
   break;
  }
  cp += ret;
  left -= ret;
 }

 return sz - left;
}
