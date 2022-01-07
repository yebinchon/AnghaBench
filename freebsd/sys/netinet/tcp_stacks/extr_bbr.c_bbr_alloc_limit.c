
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ rc_num_split_allocs; } ;
struct tcp_bbr {int alloc_limit_reported; TYPE_1__ r_ctl; } ;
struct bbr_sendmap {scalar_t__ r_limit_type; } ;


 int BBR_STAT_INC (int ) ;
 struct bbr_sendmap* bbr_alloc (struct tcp_bbr*) ;
 int bbr_alloc_limited_conns ;
 int bbr_split_limited ;
 scalar_t__ bbr_tcp_map_split_limit ;

__attribute__((used)) static struct bbr_sendmap *
bbr_alloc_limit(struct tcp_bbr *bbr, uint8_t limit_type)
{
 struct bbr_sendmap *rsm;

 if (limit_type) {

  if (bbr_tcp_map_split_limit > 0 &&
      bbr->r_ctl.rc_num_split_allocs >= bbr_tcp_map_split_limit) {
   BBR_STAT_INC(bbr_split_limited);
   if (!bbr->alloc_limit_reported) {
    bbr->alloc_limit_reported = 1;
    BBR_STAT_INC(bbr_alloc_limited_conns);
   }
   return (((void*)0));
  }
 }


 rsm = bbr_alloc(bbr);
 if (rsm != ((void*)0) && limit_type) {
  rsm->r_limit_type = limit_type;
  bbr->r_ctl.rc_num_split_allocs++;
 }
 return (rsm);
}
