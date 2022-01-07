
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ bcmp (char const*,char const*,int) ;

__attribute__((used)) static int
ni6_dnsmatch(const char *a, int alen, const char *b, int blen)
{
 const char *a0, *b0;
 int l;


 if (alen == blen && bcmp(a, b, alen) == 0)
  return 1;

 a0 = a;
 b0 = b;


 if (alen < 2 || blen < 2)
  return 0;
 if (a0[alen - 1] != '\0' || b0[blen - 1] != '\0')
  return 0;
 alen--;
 blen--;

 while (a - a0 < alen && b - b0 < blen) {
  if (a - a0 + 1 > alen || b - b0 + 1 > blen)
   return 0;

  if ((signed char)a[0] < 0 || (signed char)b[0] < 0)
   return 0;

  if (a[0] >= 64 || b[0] >= 64)
   return 0;


  if (a[0] == 0 && a - a0 == alen - 1)
   return 1;
  if (b[0] == 0 && b - b0 == blen - 1)
   return 1;
  if (a[0] == 0 || b[0] == 0)
   return 0;

  if (a[0] != b[0])
   return 0;
  l = a[0];
  if (a - a0 + 1 + l > alen || b - b0 + 1 + l > blen)
   return 0;
  if (bcmp(a + 1, b + 1, l) != 0)
   return 0;

  a += 1 + l;
  b += 1 + l;
 }

 if (a - a0 == alen && b - b0 == blen)
  return 1;
 else
  return 0;
}
