
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct tcp_bbr {int dummy; } ;


 size_t BBR_SUB_GAIN ;
 scalar_t__ BBR_UNIT ;
 int bbr_get_bw (struct tcp_bbr*) ;
 scalar_t__* bbr_hptsi_gain ;

__attribute__((used)) static uint64_t
bbr_get_hardware_rate(struct tcp_bbr *bbr)
{
 uint64_t bw;

 bw = bbr_get_bw(bbr);
 bw *= (uint64_t)bbr_hptsi_gain[BBR_SUB_GAIN];
 bw /= (uint64_t)BBR_UNIT;
 return(bw);
}
