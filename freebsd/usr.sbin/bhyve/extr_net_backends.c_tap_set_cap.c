
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct net_backend {int dummy; } ;



__attribute__((used)) static int
tap_set_cap(struct net_backend *be, uint64_t features,
  unsigned vnet_hdr_len)
{

 return ((features || vnet_hdr_len) ? -1 : 0);
}
