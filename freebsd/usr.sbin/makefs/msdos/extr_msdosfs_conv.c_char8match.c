
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int le16toh (int) ;
 int* u2l ;

__attribute__((used)) static int
char8match(uint16_t *w1, uint16_t *w2, int n)
{
 uint16_t u1, u2;

 while (n > 0) {
  u1 = le16toh(*w1);
  u2 = le16toh(*w2);
  if (u1 == 0 || u2 == 0)
   return u1 == u2;
  if (u1 > 255 || u2 > 255)
   return 0;
  u1 = u2l[u1 & 0xff];
  u2 = u2l[u2 & 0xff];
  if (u1 != u2)
   return 0;
  ++w1;
  ++w2;
  --n;
 }

 return 1;
}
