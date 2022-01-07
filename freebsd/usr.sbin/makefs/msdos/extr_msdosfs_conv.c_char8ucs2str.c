
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;


 int htole16 (scalar_t__ const) ;

__attribute__((used)) static int
char8ucs2str(const uint8_t *in, int n, uint16_t *out, int m)
{
 uint16_t *p;

 p = out;
 while (n > 0 && in[0] != 0) {
  if (m < 1)
   break;
  if (p)
   p[0] = htole16(in[0]);
  p += 1;
  m -= 1;
  in += 1;
  n -= 1;
 }

 return p - out;
}
