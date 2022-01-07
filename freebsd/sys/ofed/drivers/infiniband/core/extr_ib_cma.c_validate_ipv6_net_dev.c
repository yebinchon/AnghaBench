
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_len; int sin6_addr; int sin6_scope_id; } ;
struct sockaddr {int dummy; } ;
struct rtentry {struct net_device* rt_ifp; } ;
struct net_device {int if_index; int if_vnet; } ;
typedef int src_tmp ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int RTFREE_LOCKED (struct rtentry*) ;
 int dev_put (struct net_device*) ;
 struct net_device* ip6_dev_find (int ,int ,int ) ;
 scalar_t__ memcmp (int *,int *,int) ;
 struct rtentry* rtalloc1 (struct sockaddr*,int,int ) ;
 int sa6_embedscope (struct sockaddr_in6*,int ) ;

__attribute__((used)) static bool validate_ipv6_net_dev(struct net_device *net_dev,
      const struct sockaddr_in6 *dst_addr,
      const struct sockaddr_in6 *src_addr)
{
 return 0;

}
