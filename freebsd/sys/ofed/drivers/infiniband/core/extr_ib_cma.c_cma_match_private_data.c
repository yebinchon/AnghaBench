
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct in6_addr {int dummy; } ;
struct sockaddr_in6 {struct in6_addr sin6_addr; } ;
struct TYPE_6__ {int s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct TYPE_5__ {scalar_t__ ps; } ;
struct rdma_id_private {TYPE_1__ id; int afonly; } ;
struct TYPE_7__ {int addr; } ;
struct TYPE_8__ {int ip6; TYPE_3__ ip4; } ;
struct cma_hdr {TYPE_4__ dst_addr; } ;
typedef int ip6_addr ;
typedef int __be32 ;





 scalar_t__ RDMA_PS_SDP ;
 scalar_t__ cma_any_addr (struct sockaddr*) ;
 int cma_get_ip_ver (struct cma_hdr const*) ;
 int cma_ip6_clear_scope_id (struct in6_addr*) ;
 struct sockaddr* cma_src_addr (struct rdma_id_private*) ;
 int memcmp (int *,struct in6_addr*,int) ;
 int sdp_match_private_data (struct rdma_id_private*,void const*,struct sockaddr*) ;

__attribute__((used)) static bool cma_match_private_data(struct rdma_id_private *id_priv,
       const void *vhdr)
{
 const struct cma_hdr *hdr = vhdr;
 struct sockaddr *addr = cma_src_addr(id_priv);
 __be32 ip4_addr;
 struct in6_addr ip6_addr;

 if (cma_any_addr(addr) && !id_priv->afonly)
  return 1;

 if (id_priv->id.ps == RDMA_PS_SDP)
  return sdp_match_private_data(id_priv, vhdr, addr);

 switch (addr->sa_family) {
 case 129:
  ip4_addr = ((struct sockaddr_in *)addr)->sin_addr.s_addr;
  if (cma_get_ip_ver(hdr) != 4)
   return 0;
  if (!cma_any_addr(addr) &&
      hdr->dst_addr.ip4.addr != ip4_addr)
   return 0;
  break;
 case 128:
  ip6_addr = ((struct sockaddr_in6 *)addr)->sin6_addr;
  if (cma_get_ip_ver(hdr) != 6)
   return 0;
  cma_ip6_clear_scope_id(&ip6_addr);
  if (!cma_any_addr(addr) &&
      memcmp(&hdr->dst_addr.ip6, &ip6_addr, sizeof(ip6_addr)))
   return 0;
  break;
 case 130:
  return 1;
 default:
  return 0;
 }

 return 1;
}
