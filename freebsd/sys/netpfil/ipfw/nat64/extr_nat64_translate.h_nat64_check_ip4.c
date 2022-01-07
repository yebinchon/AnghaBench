
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int in_addr_t ;


 scalar_t__ IN_EXPERIMENTAL (int ) ;
 scalar_t__ IN_LINKLOCAL (int ) ;
 scalar_t__ IN_LOOPBACK (int ) ;
 scalar_t__ IN_MULTICAST (int ) ;
 int ntohl (int ) ;

__attribute__((used)) static inline int
nat64_check_ip4(in_addr_t ia)
{


 if (IN_MULTICAST(ntohl(ia)) || IN_LOOPBACK(ntohl(ia)) ||
     IN_LINKLOCAL(ntohl(ia)) || IN_EXPERIMENTAL(ntohl(ia)))
  return (1);
 return (0);
}
