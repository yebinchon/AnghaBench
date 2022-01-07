
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int V_tcptw_zone ;
 scalar_t__ maxtcptw ;
 int tcptw_auto_size () ;
 int uma_zone_set_max (int ,int ) ;

void
tcp_tw_zone_change(void)
{

 if (maxtcptw == 0)
  uma_zone_set_max(V_tcptw_zone, tcptw_auto_size());
}
