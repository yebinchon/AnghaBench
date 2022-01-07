
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_long ;


 int casueword32 (int volatile*,int ,int *,int ) ;

int
casueword(volatile u_long *addr, u_long old, u_long *oldvalp, u_long new)
{

 return (casueword32((volatile uint32_t *)addr, old,
     (uint32_t *)oldvalp, new));
}
