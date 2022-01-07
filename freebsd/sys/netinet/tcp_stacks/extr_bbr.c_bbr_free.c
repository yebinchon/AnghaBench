
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rc_free_cnt; int rc_num_maps_alloced; int rc_free; struct bbr_sendmap* rc_sacklast; struct bbr_sendmap* rc_next; struct bbr_sendmap* rc_resend; struct bbr_sendmap* rc_tlp_send; int rc_num_small_maps_alloced; int rc_num_split_allocs; } ;
struct tcp_bbr {TYPE_1__ r_ctl; } ;
struct bbr_sendmap {scalar_t__ r_limit_type; scalar_t__ r_is_smallmap; } ;


 int TAILQ_INSERT_TAIL (int *,struct bbr_sendmap*,int ) ;
 scalar_t__ bbr_min_req_free ;
 int bbr_zone ;
 int memset (struct bbr_sendmap*,int ,int) ;
 int r_next ;
 int uma_zfree (int ,struct bbr_sendmap*) ;

__attribute__((used)) static void
bbr_free(struct tcp_bbr *bbr, struct bbr_sendmap *rsm)
{
 if (rsm->r_limit_type) {

  bbr->r_ctl.rc_num_split_allocs--;
 }
 if (rsm->r_is_smallmap)
  bbr->r_ctl.rc_num_small_maps_alloced--;
 if (bbr->r_ctl.rc_tlp_send == rsm)
  bbr->r_ctl.rc_tlp_send = ((void*)0);
 if (bbr->r_ctl.rc_resend == rsm) {
  bbr->r_ctl.rc_resend = ((void*)0);
 }
 if (bbr->r_ctl.rc_next == rsm)
  bbr->r_ctl.rc_next = ((void*)0);
 if (bbr->r_ctl.rc_sacklast == rsm)
  bbr->r_ctl.rc_sacklast = ((void*)0);
 if (bbr->r_ctl.rc_free_cnt < bbr_min_req_free) {
  memset(rsm, 0, sizeof(struct bbr_sendmap));
  TAILQ_INSERT_TAIL(&bbr->r_ctl.rc_free, rsm, r_next);
  rsm->r_limit_type = 0;
  bbr->r_ctl.rc_free_cnt++;
  return;
 }
 bbr->r_ctl.rc_num_maps_alloced--;
 uma_zfree(bbr_zone, rsm);
}
