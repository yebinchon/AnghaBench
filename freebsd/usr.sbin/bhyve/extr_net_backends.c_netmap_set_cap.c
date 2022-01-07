
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct net_backend {int dummy; } ;


 int netmap_set_vnet_hdr_len (struct net_backend*,unsigned int) ;

__attribute__((used)) static int
netmap_set_cap(struct net_backend *be, uint64_t features,
        unsigned vnet_hdr_len)
{

 return (netmap_set_vnet_hdr_len(be, vnet_hdr_len));
}
