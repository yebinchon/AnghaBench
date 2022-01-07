
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int casueword32 (int volatile*,int,int*,int) ;

uint32_t
casuword32(volatile uint32_t *addr, uint32_t old, uint32_t new)
{
 int rv;
 uint32_t val;

 rv = casueword32(addr, old, &val, new);
 return (rv == -1 ? -1 : val);
}
