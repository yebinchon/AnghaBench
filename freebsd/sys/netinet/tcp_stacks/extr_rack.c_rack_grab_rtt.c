
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct tcpcb {int t_srtt; } ;
struct tcp_rack {scalar_t__ rc_rack_rtt; } ;


 scalar_t__ RACK_INITIAL_RTO ;
 int TCP_RTT_SHIFT ;
 scalar_t__ TICKS_2_MSEC (int) ;

__attribute__((used)) static uint32_t
rack_grab_rtt(struct tcpcb *tp, struct tcp_rack *rack)
{
 if (rack->rc_rack_rtt)
  return(rack->rc_rack_rtt);
 else if (tp->t_srtt == 0)
  return(RACK_INITIAL_RTO);
 return (TICKS_2_MSEC(tp->t_srtt >> TCP_RTT_SHIFT));
}
