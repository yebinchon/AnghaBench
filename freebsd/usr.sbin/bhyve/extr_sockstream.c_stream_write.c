
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ errno ;
 scalar_t__ write (int,int const*,scalar_t__) ;

ssize_t
stream_write(int fd, const void *buf, ssize_t nbytes)
{
 const uint8_t *p;
 ssize_t len = 0;
 ssize_t n;

 p = buf;

 while (len < nbytes) {
  n = write(fd, p + len, nbytes - len);
  if (n == 0)
   break;
  if (n < 0) {
   if (errno == EINTR || errno == EAGAIN)
    continue;
   return (n);
  }
  len += n;
 }
 return (len);
}
