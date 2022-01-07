
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct resolve_cb_context {int status; int comp; struct rdma_dev_addr* addr; } ;
struct rdma_dev_addr {int hoplimit; int dst_dev_addr; int net; int bound_dev_if; } ;
struct net_device {int if_index; } ;
typedef int dev_addr ;


 int ETH_ALEN ;
 int dev_net (struct net_device*) ;
 int init_completion (int *) ;
 int memcpy (int *,int ,int ) ;
 int memset (struct rdma_dev_addr*,int ,int) ;
 int rdma_gid2ip (struct sockaddr*,union ib_gid const*) ;
 int rdma_resolve_ip (int *,struct sockaddr*,struct sockaddr*,struct rdma_dev_addr*,int,int ,struct resolve_cb_context*) ;
 int resolve_cb ;
 int self ;
 int wait_for_completion (int *) ;

int rdma_addr_find_l2_eth_by_grh(const union ib_gid *sgid,
     const union ib_gid *dgid,
     u8 *dmac, struct net_device *dev,
     int *hoplimit)
{
 int ret = 0;
 struct rdma_dev_addr dev_addr;
 struct resolve_cb_context ctx;

 union {
  struct sockaddr _sockaddr;
  struct sockaddr_in _sockaddr_in;
  struct sockaddr_in6 _sockaddr_in6;
 } sgid_addr, dgid_addr;

 rdma_gid2ip(&sgid_addr._sockaddr, sgid);
 rdma_gid2ip(&dgid_addr._sockaddr, dgid);

 memset(&dev_addr, 0, sizeof(dev_addr));

 dev_addr.bound_dev_if = dev->if_index;
 dev_addr.net = dev_net(dev);

 ctx.addr = &dev_addr;
 init_completion(&ctx.comp);
 ret = rdma_resolve_ip(&self, &sgid_addr._sockaddr, &dgid_addr._sockaddr,
   &dev_addr, 1000, resolve_cb, &ctx);
 if (ret)
  return ret;

 wait_for_completion(&ctx.comp);

 ret = ctx.status;
 if (ret)
  return ret;

 memcpy(dmac, dev_addr.dst_dev_addr, ETH_ALEN);
 if (hoplimit)
  *hoplimit = dev_addr.hoplimit;
 return ret;
}
