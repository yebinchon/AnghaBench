
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;


 scalar_t__ BIOS_PADDRTOVADDR (scalar_t__) ;
 scalar_t__ MP_SIG ;

__attribute__((used)) static int
search_for_sig(u_int32_t target, int count)
{
 int x;
 u_int32_t *addr;

 addr = (u_int32_t *)BIOS_PADDRTOVADDR(target);
 for (x = 0; x < count; x += 4)
  if (addr[x] == MP_SIG)

   return (target + (x * sizeof(u_int32_t)));
 return (-1);
}
