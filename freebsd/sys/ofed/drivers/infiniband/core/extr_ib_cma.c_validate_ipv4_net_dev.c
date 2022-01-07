
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct rtentry {struct net_device* rt_ifp; } ;
struct net_device {int if_vnet; } ;
typedef int src_tmp ;
typedef scalar_t__ __be32 ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int RTFREE_LOCKED (struct rtentry*) ;
 int dev_put (struct net_device*) ;
 struct net_device* ip_dev_find (int ,scalar_t__) ;
 scalar_t__ ipv4_is_lbcast (scalar_t__) ;
 scalar_t__ ipv4_is_loopback (scalar_t__) ;
 scalar_t__ ipv4_is_multicast (scalar_t__) ;
 scalar_t__ ipv4_is_zeronet (scalar_t__) ;
 struct rtentry* rtalloc1 (struct sockaddr*,int,int ) ;

__attribute__((used)) static bool validate_ipv4_net_dev(struct net_device *net_dev,
      const struct sockaddr_in *dst_addr,
      const struct sockaddr_in *src_addr)
{
 return 0;

}
