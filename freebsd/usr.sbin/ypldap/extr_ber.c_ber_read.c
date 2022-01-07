
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ber {int fd; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ ber_readbuf (struct ber*,int *,scalar_t__) ;
 scalar_t__ errno ;
 scalar_t__ read (int,int *,scalar_t__) ;

__attribute__((used)) static ssize_t
ber_read(struct ber *ber, void *buf, size_t len)
{
 u_char *b = buf;
 ssize_t r, remain = len;







 while (remain > 0) {
  if (ber->fd == -1)
   r = ber_readbuf(ber, b, remain);
  else
   r = read(ber->fd, b, remain);
  if (r == -1) {
   if (errno == EINTR || errno == EAGAIN)
    continue;
   return -1;
  }
  if (r == 0)
   return (b - (u_char *)buf);
  b += r;
  remain -= r;
 }
 return (b - (u_char *)buf);
}
