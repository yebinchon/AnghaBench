
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int casuword32_int (int volatile*,int,int) ;

uint32_t
casuword32(volatile uint32_t *base, uint32_t oldval, uint32_t newval)
{
 uint32_t ret;

 ret = casuword32_int(base, oldval, newval);
 if (ret != -1)
  ret = ret != oldval;
 return (ret);
}
