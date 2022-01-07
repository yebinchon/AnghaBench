
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rc_num_maps_alloced; } ;
struct tcp_bbr {int alloc_limit_reported; TYPE_1__ r_ctl; } ;
struct bbr_sendmap {int dummy; } ;


 int BBR_STAT_INC (int ) ;
 struct bbr_sendmap* bbr_alloc (struct tcp_bbr*) ;
 int bbr_alloc_limited ;
 int bbr_alloc_limited_conns ;
 scalar_t__ bbr_tcp_map_entries_limit ;

__attribute__((used)) static struct bbr_sendmap *
bbr_alloc_full_limit(struct tcp_bbr *bbr)
{
 if ((bbr_tcp_map_entries_limit > 0) &&
     (bbr->r_ctl.rc_num_maps_alloced >= bbr_tcp_map_entries_limit)) {
  BBR_STAT_INC(bbr_alloc_limited);
  if (!bbr->alloc_limit_reported) {
   bbr->alloc_limit_reported = 1;
   BBR_STAT_INC(bbr_alloc_limited_conns);
  }
  return (((void*)0));
 }
 return (bbr_alloc(bbr));
}
