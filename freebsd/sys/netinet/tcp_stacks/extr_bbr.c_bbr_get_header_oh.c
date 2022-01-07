
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct tcphdr {int dummy; } ;
struct TYPE_2__ {scalar_t__ rc_inc_enet_oh; scalar_t__ rc_inc_ip_oh; scalar_t__ rc_inc_tcp_oh; } ;
struct tcp_bbr {int rc_last_options; TYPE_1__ r_ctl; scalar_t__ r_is_v6; } ;
struct ip6_hdr {int dummy; } ;
struct ip {int dummy; } ;
struct ether_header {int dummy; } ;



__attribute__((used)) static uint32_t
bbr_get_header_oh(struct tcp_bbr *bbr)
{
 int seg_oh;

 seg_oh = 0;
 if (bbr->r_ctl.rc_inc_tcp_oh) {

  seg_oh = (bbr->rc_last_options + sizeof(struct tcphdr));
 }
 if (bbr->r_ctl.rc_inc_ip_oh) {
 }
 if (bbr->r_ctl.rc_inc_enet_oh) {

  seg_oh += sizeof(struct ether_header);
 }
 return(seg_oh);
}
