
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int u_int ;


 uintptr_t ADDR_SR_SHFT ;

__attribute__((used)) static __inline int
va_to_sr(u_int *sr, vm_offset_t va)
{
 return (sr[(uintptr_t)va >> ADDR_SR_SHFT]);
}
