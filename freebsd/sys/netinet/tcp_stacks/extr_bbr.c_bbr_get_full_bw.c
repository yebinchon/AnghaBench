
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int rc_delrate; } ;
struct tcp_bbr {TYPE_1__ r_ctl; } ;


 int get_filter_value (int *) ;

__attribute__((used)) static inline uint64_t
bbr_get_full_bw(struct tcp_bbr *bbr)
{
 uint64_t bw;

 bw = get_filter_value(&bbr->r_ctl.rc_delrate);

 return (bw);
}
