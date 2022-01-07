
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int JHASH_GOLDEN_RATIO ;
 int __jhash_mix (int,int,int) ;

__attribute__((used)) static inline u32 jhash2(u32 *k, u32 length, u32 initval)
{
 u32 a, b, c, len;

 a = b = JHASH_GOLDEN_RATIO;
 c = initval;
 len = length;

 while (len >= 3) {
  a += k[0];
  b += k[1];
  c += k[2];
  __jhash_mix(a, b, c);
  k += 3; len -= 3;
 }

 c += length * 4;

 switch (len) {
 case 2 : b += k[1];
 case 1 : a += k[0];
 };

 __jhash_mix(a,b,c);

 return c;
}
