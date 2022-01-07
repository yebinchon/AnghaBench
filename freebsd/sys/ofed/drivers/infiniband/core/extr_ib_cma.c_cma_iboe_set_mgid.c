
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union ib_gid {int* raw; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef enum ib_gid_type { ____Placeholder_ib_gid_type } ib_gid_type ;
typedef int __be32 ;


 scalar_t__ AF_INET6 ;
 int IB_GID_TYPE_ROCE_UDP_ENCAP ;
 scalar_t__ cma_any_addr (struct sockaddr*) ;
 int memcpy (union ib_gid*,int *,int) ;
 int memset (union ib_gid*,int ,int) ;

__attribute__((used)) static void cma_iboe_set_mgid(struct sockaddr *addr, union ib_gid *mgid,
         enum ib_gid_type gid_type)
{
 struct sockaddr_in *sin = (struct sockaddr_in *)addr;
 struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)addr;

 if (cma_any_addr(addr)) {
  memset(mgid, 0, sizeof *mgid);
 } else if (addr->sa_family == AF_INET6) {
  memcpy(mgid, &sin6->sin6_addr, sizeof *mgid);
 } else {
  mgid->raw[0] =
   (gid_type == IB_GID_TYPE_ROCE_UDP_ENCAP) ? 0 : 0xff;
  mgid->raw[1] =
   (gid_type == IB_GID_TYPE_ROCE_UDP_ENCAP) ? 0 : 0x0e;
  mgid->raw[2] = 0;
  mgid->raw[3] = 0;
  mgid->raw[4] = 0;
  mgid->raw[5] = 0;
  mgid->raw[6] = 0;
  mgid->raw[7] = 0;
  mgid->raw[8] = 0;
  mgid->raw[9] = 0;
  mgid->raw[10] = 0xff;
  mgid->raw[11] = 0xff;
  *(__be32 *)(&mgid->raw[12]) = sin->sin_addr.s_addr;
 }
}
