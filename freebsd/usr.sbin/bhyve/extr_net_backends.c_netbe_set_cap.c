
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint16_t ;
struct net_backend {unsigned int fe_vnet_hdr_len; int (* set_cap ) (struct net_backend*,int ,unsigned int) ;scalar_t__ be_vnet_hdr_len; } ;


 unsigned int VNET_HDR_LEN ;
 int assert (int) ;
 int stub1 (struct net_backend*,int ,unsigned int) ;

int
netbe_set_cap(struct net_backend *be, uint64_t features,
       unsigned vnet_hdr_len)
{
 int ret;

 assert(be != ((void*)0));


 if (vnet_hdr_len && vnet_hdr_len != VNET_HDR_LEN
  && vnet_hdr_len != (VNET_HDR_LEN - sizeof(uint16_t)))
  return (-1);

 be->fe_vnet_hdr_len = vnet_hdr_len;

 ret = be->set_cap(be, features, vnet_hdr_len);
 assert(be->be_vnet_hdr_len == 0 ||
        be->be_vnet_hdr_len == be->fe_vnet_hdr_len);

 return (ret);
}
