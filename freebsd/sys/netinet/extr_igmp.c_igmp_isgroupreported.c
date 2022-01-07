
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int s_addr; } ;


 scalar_t__ IN_LOCAL_GROUP (int ) ;
 int V_igmp_sendlocal ;
 scalar_t__ in_allhosts (struct in_addr const) ;
 int ntohl (int ) ;

__attribute__((used)) static __inline int
igmp_isgroupreported(const struct in_addr addr)
{

 if (in_allhosts(addr) ||
     ((!V_igmp_sendlocal && IN_LOCAL_GROUP(ntohl(addr.s_addr)))))
  return (0);

 return (1);
}
