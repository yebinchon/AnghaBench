
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct rdma_dev_addr {int dummy; } ;


 int EINVAL ;
 int addr_resolve (struct sockaddr*,struct sockaddr const*,struct rdma_dev_addr*) ;
 int memcpy (struct sockaddr*,struct sockaddr*,int ) ;
 int rdma_addr_size (struct sockaddr*) ;

int rdma_resolve_ip_route(struct sockaddr *src_addr,
     const struct sockaddr *dst_addr,
     struct rdma_dev_addr *addr)
{
 struct sockaddr_storage ssrc_addr = {};
 struct sockaddr *src_in = (struct sockaddr *)&ssrc_addr;

 if (src_addr) {
  if (src_addr->sa_family != dst_addr->sa_family)
   return -EINVAL;

  memcpy(src_in, src_addr, rdma_addr_size(src_addr));
 } else {
  src_in->sa_family = dst_addr->sa_family;
 }

 return addr_resolve(src_in, dst_addr, addr);
}
