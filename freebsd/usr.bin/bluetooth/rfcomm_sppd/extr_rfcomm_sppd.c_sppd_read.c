
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int read (int,char*,int) ;

__attribute__((used)) static int
sppd_read(int fd, char *buffer, int size)
{
 int n;

again:
 n = read(fd, buffer, size);
 if (n < 0) {
  if (errno == EINTR)
   goto again;

  return (-1);
 }

 return (n);
}
