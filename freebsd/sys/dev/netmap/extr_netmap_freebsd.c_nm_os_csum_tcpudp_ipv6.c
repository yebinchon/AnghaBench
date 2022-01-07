
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct nm_ipv6hdr {int nexthdr; } ;


 int in6_cksum_pseudo (void*,size_t,int ,int ) ;
 int nm_os_csum_fold (int ) ;
 int nm_os_csum_raw (void*,size_t,int ) ;
 int nm_prerr (char*) ;

void
nm_os_csum_tcpudp_ipv6(struct nm_ipv6hdr *ip6h, void *data,
     size_t datalen, uint16_t *check)
{




 static int notsupported = 0;
 if (!notsupported) {
  notsupported = 1;
  nm_prerr("inet6 segmentation not supported");
 }

}
