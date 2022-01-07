
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;


 int CHAR_BIT ;
 int MIN (int,int) ;
 int* sa_rawaddr (struct sockaddr*,int*) ;

__attribute__((used)) static int
makemask(struct sockaddr_storage *ssp, int bitlen)
{
 u_char *p;
 int bits, i, len;

 if ((p = sa_rawaddr((struct sockaddr *)ssp, &len)) == ((void*)0))
  return (-1);
 if (bitlen > len * CHAR_BIT)
  return (-1);

 for (i = 0; i < len; i++) {
  bits = MIN(CHAR_BIT, bitlen);
  *p++ = (u_char)~0 << (CHAR_BIT - bits);
  bitlen -= bits;
 }
 return 0;
}
