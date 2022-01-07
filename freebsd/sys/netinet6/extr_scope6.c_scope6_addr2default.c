
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct in6_addr {int dummy; } ;
struct TYPE_2__ {int * s6id_list; } ;


 scalar_t__ IN6_IS_ADDR_LOOPBACK (struct in6_addr*) ;
 int SCOPE6_LOCK () ;
 int SCOPE6_UNLOCK () ;
 TYPE_1__ V_sid_default ;
 size_t in6_addrscope (struct in6_addr*) ;

u_int32_t
scope6_addr2default(struct in6_addr *addr)
{
 u_int32_t id;





 if (IN6_IS_ADDR_LOOPBACK(addr))
  return (0);





 SCOPE6_LOCK();
 id = V_sid_default.s6id_list[in6_addrscope(addr)];
 SCOPE6_UNLOCK();
 return (id);
}
