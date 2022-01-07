
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int casueword (int volatile*,int,int*,int) ;

u_long
casuword(volatile u_long *addr, u_long old, u_long new)
{
 int rv;
 u_long val;

 rv = casueword(addr, old, &val, new);
 return (rv == -1 ? -1 : val);
}
