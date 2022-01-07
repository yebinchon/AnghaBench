
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int u16 ;


 int E1000_LTRV_SCALE_FACTOR ;
 int E1000_LTRV_SCALE_MASK ;
 int E1000_LTRV_SCALE_SHIFT ;
 int E1000_LTRV_VALUE_MASK ;

__attribute__((used)) static u64 e1000_ltr2ns(u16 ltr)
{
 u32 value, scale;


 value = ltr & E1000_LTRV_VALUE_MASK;
 scale = (ltr & E1000_LTRV_SCALE_MASK) >> E1000_LTRV_SCALE_SHIFT;

 return value * (1 << (scale * E1000_LTRV_SCALE_FACTOR));
}
