
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int s_addr; } ;
struct TYPE_4__ {int s_addr; } ;
struct ip {int ip_hl; int ip_v; TYPE_2__ ip_dst; TYPE_1__ ip_src; scalar_t__ ip_sum; int ip_p; int ip_ttl; int ip_off; int ip_id; int ip_len; int ip_tos; } ;
struct TYPE_6__ {int daddr; int saddr; int protocol; int ttl; int frag_off; int id; int tot_len; int tos; } ;
struct ib_ud_header {TYPE_3__ ip4; } ;
typedef int __sum16 ;


 int in_cksum_hdr (struct ip*) ;

__sum16 ib_ud_ip4_csum(struct ib_ud_header *header)
{
 return 0;

}
