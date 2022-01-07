
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct nm_iphdr {int daddr; int saddr; scalar_t__ protocol; } ;


 int htobe16 (scalar_t__) ;
 scalar_t__ in_pseudo (int ,int ,int ) ;
 scalar_t__ nm_os_csum_fold (int ) ;
 int nm_os_csum_raw (void*,size_t,int ) ;
 int nm_prerr (char*) ;

void
nm_os_csum_tcpudp_ipv4(struct nm_iphdr *iph, void *data,
     size_t datalen, uint16_t *check)
{
 static int notsupported = 0;
 if (!notsupported) {
  notsupported = 1;
  nm_prerr("inet4 segmentation not supported");
 }

}
