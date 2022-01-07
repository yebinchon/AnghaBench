
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rs_rtt_tot; scalar_t__ rs_rtt_cnt; int rs_flags; } ;
struct TYPE_4__ {TYPE_1__ rack_rs; } ;
struct tcp_rack {TYPE_2__ r_ctl; } ;


 int RACK_RTT_EMPTY ;

__attribute__((used)) static void inline
rack_clear_rate_sample(struct tcp_rack *rack)
{
 rack->r_ctl.rack_rs.rs_flags = RACK_RTT_EMPTY;
 rack->r_ctl.rack_rs.rs_rtt_cnt = 0;
 rack->r_ctl.rack_rs.rs_rtt_tot = 0;
}
