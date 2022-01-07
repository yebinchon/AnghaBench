
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct net_backend {int dummy; } ;


 int NETMAP_FEATURES ;
 int VNET_HDR_LEN ;
 scalar_t__ netmap_has_vnet_hdr_len (struct net_backend*,int ) ;

__attribute__((used)) static uint64_t
netmap_get_cap(struct net_backend *be)
{

 return (netmap_has_vnet_hdr_len(be, VNET_HDR_LEN) ?
     NETMAP_FEATURES : 0);
}
