
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ JHASH_GOLDEN_RATIO ;
 int __jhash_mix (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline u32 jhash_3words(u32 a, u32 b, u32 c, u32 initval)
{
 a += JHASH_GOLDEN_RATIO;
 b += JHASH_GOLDEN_RATIO;
 c += initval;

 __jhash_mix(a, b, c);

 return c;
}
