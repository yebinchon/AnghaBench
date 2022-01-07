
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ u_char ;
typedef int off_t ;
typedef int buf ;


 int read (int,scalar_t__*,int) ;

int
csum2(int fd, uint32_t *cval, off_t *clen)
{
 uint32_t lcrc;
 int nr;
 off_t total;
 u_char *p;
 u_char buf[8192];
 lcrc = total = 0;
 while ((nr = read(fd, buf, sizeof(buf))) > 0)
  for (total += nr, p = buf; nr--; ++p)
   lcrc += *p;
 if (nr < 0)
  return (1);

 lcrc = (lcrc & 0xffff) + (lcrc >> 16);
 lcrc = (lcrc & 0xffff) + (lcrc >> 16);

 *cval = lcrc;
 *clen = total;
 return (0);
}
