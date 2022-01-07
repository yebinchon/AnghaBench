
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rc_free_cnt; int rc_free; int rc_num_maps_alloced; } ;
struct tcp_bbr {TYPE_1__ r_ctl; } ;
struct bbr_sendmap {int dummy; } ;


 int BBR_STAT_INC (int ) ;
 int M_NOWAIT ;
 int M_ZERO ;
 struct bbr_sendmap* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct bbr_sendmap*,int ) ;
 int bbr_to_alloc ;
 int bbr_to_alloc_emerg ;
 int bbr_to_alloc_failed ;
 int bbr_zone ;
 int r_next ;
 struct bbr_sendmap* uma_zalloc (int ,int) ;

__attribute__((used)) static struct bbr_sendmap *
bbr_alloc(struct tcp_bbr *bbr)
{
 struct bbr_sendmap *rsm;

 BBR_STAT_INC(bbr_to_alloc);
 rsm = uma_zalloc(bbr_zone, (M_NOWAIT | M_ZERO));
 if (rsm) {
  bbr->r_ctl.rc_num_maps_alloced++;
  return (rsm);
 }
 if (bbr->r_ctl.rc_free_cnt) {
  BBR_STAT_INC(bbr_to_alloc_emerg);
  rsm = TAILQ_FIRST(&bbr->r_ctl.rc_free);
  TAILQ_REMOVE(&bbr->r_ctl.rc_free, rsm, r_next);
  bbr->r_ctl.rc_free_cnt--;
  return (rsm);
 }
 BBR_STAT_INC(bbr_to_alloc_failed);
 return (((void*)0));
}
