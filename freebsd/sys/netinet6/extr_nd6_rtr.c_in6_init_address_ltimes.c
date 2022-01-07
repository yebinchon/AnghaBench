
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_prefix {int dummy; } ;
struct in6_addrlifetime {scalar_t__ ia6t_vltime; scalar_t__ ia6t_expire; scalar_t__ ia6t_pltime; scalar_t__ ia6t_preferred; } ;


 scalar_t__ ND6_INFINITE_LIFETIME ;
 void* time_uptime ;

__attribute__((used)) static void
in6_init_address_ltimes(struct nd_prefix *new, struct in6_addrlifetime *lt6)
{

 if (lt6->ia6t_vltime == ND6_INFINITE_LIFETIME)
  lt6->ia6t_expire = 0;
 else {
  lt6->ia6t_expire = time_uptime;
  lt6->ia6t_expire += lt6->ia6t_vltime;
 }


 if (lt6->ia6t_pltime == ND6_INFINITE_LIFETIME)
  lt6->ia6t_preferred = 0;
 else {
  lt6->ia6t_preferred = time_uptime;
  lt6->ia6t_preferred += lt6->ia6t_pltime;
 }
}
