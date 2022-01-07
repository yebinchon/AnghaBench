
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rs_flags; scalar_t__ rs_rtt_lowest; scalar_t__ rs_rtt_highest; int rs_rtt_cnt; int rs_rtt_tot; } ;
struct TYPE_4__ {TYPE_1__ rack_rs; } ;
struct tcp_rack {TYPE_2__ r_ctl; } ;
typedef scalar_t__ int32_t ;


 int RACK_RTT_EMPTY ;
 int RACK_RTT_VALID ;

__attribute__((used)) static void
tcp_rack_xmit_timer(struct tcp_rack *rack, int32_t rtt)
{
 if ((rack->r_ctl.rack_rs.rs_flags & RACK_RTT_EMPTY) ||
     (rack->r_ctl.rack_rs.rs_rtt_lowest > rtt)) {
  rack->r_ctl.rack_rs.rs_rtt_lowest = rtt;
 }
 if ((rack->r_ctl.rack_rs.rs_flags & RACK_RTT_EMPTY) ||
     (rack->r_ctl.rack_rs.rs_rtt_highest < rtt)) {
  rack->r_ctl.rack_rs.rs_rtt_highest = rtt;
 }
 rack->r_ctl.rack_rs.rs_flags = RACK_RTT_VALID;
 rack->r_ctl.rack_rs.rs_rtt_tot += rtt;
 rack->r_ctl.rack_rs.rs_rtt_cnt++;
}
