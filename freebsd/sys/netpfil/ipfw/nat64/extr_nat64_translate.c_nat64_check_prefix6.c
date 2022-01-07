
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* __u6_addr8; } ;
struct in6_addr {TYPE_1__ __u6_addr; } ;


 int EINVAL ;
 scalar_t__ IN6_IS_ADDR_LOOPBACK (struct in6_addr const*) ;
 scalar_t__ IN6_IS_ADDR_MULTICAST (struct in6_addr const*) ;
 scalar_t__ IN6_IS_ADDR_UNSPECIFIED (struct in6_addr const*) ;
 scalar_t__ IN6_IS_ADDR_WKPFX (struct in6_addr const*) ;
 scalar_t__ nat64_check_prefixlen (int) ;

int
nat64_check_prefix6(const struct in6_addr *prefix, int length)
{

 if (nat64_check_prefixlen(length) != 0)
  return (EINVAL);


 if (IN6_IS_ADDR_WKPFX(prefix) && length != 96)
  return (EINVAL);


 if (prefix->__u6_addr.__u6_addr8[8] != 0)
  return (EINVAL);


 if (IN6_IS_ADDR_MULTICAST(prefix) ||
     IN6_IS_ADDR_UNSPECIFIED(prefix) ||
     IN6_IS_ADDR_LOOPBACK(prefix))
  return (EINVAL);
 return (0);
}
