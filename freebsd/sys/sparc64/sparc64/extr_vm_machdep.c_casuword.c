
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u_long ;


 long casuword64_int (long volatile*,long,long) ;

u_long
casuword(volatile u_long *p, u_long oldval, u_long newval)
{
 u_long ret;

 ret = casuword64_int(p, oldval, newval);
 if (ret != -1L)
  ret = ret != oldval;
 return (ret);
}
