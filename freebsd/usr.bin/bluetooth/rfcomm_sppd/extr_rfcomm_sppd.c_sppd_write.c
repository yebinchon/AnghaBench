
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINTR ;
 int errno ;
 int write (int,char*,int) ;

__attribute__((used)) static int
sppd_write(int fd, char *buffer, int size)
{
 int n, wrote;

 for (wrote = 0; size > 0; ) {
  n = write(fd, buffer, size);
  switch (n) {
  case -1:
   if (errno != EINTR)
    return (-1);
   break;

  case 0:

   break;

  default:
   wrote += n;
   buffer += n;
   size -= n;
   break;
  }
 }

 return (wrote);
}
