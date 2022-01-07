
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct nm_iphdr {int dummy; } ;


 int in_cksum_hdr (void*) ;
 int nm_os_csum_fold (int ) ;
 int nm_os_csum_raw (int *,int,int ) ;

uint16_t nm_os_csum_ipv4(struct nm_iphdr *iph)
{



 return nm_os_csum_fold(nm_os_csum_raw((uint8_t*)iph, sizeof(struct nm_iphdr), 0));

}
