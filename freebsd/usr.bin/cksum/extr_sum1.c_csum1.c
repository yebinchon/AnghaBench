
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
typedef int u_char ;
typedef int off_t ;
typedef int buf ;


 int read (int,int*,int) ;

int
csum1(int fd, uint32_t *cval, off_t *clen)
{
 int nr;
 u_int lcrc;
 off_t total;
 u_char *p;
 u_char buf[8192];





 lcrc = total = 0;
 while ((nr = read(fd, buf, sizeof(buf))) > 0)
  for (total += nr, p = buf; nr--; ++p) {
   if (lcrc & 1)
    lcrc |= 0x10000;
   lcrc = ((lcrc >> 1) + *p) & 0xffff;
  }
 if (nr < 0)
  return (1);

 *cval = lcrc;
 *clen = total;
 return (0);
}
