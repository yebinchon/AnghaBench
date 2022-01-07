
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct tcpcb {int dummy; } ;
struct TYPE_2__ {int rc_tmap; int rc_map; } ;
struct tcp_bbr {TYPE_1__ r_ctl; } ;
struct bbr_sendmap {int r_in_tmap; int r_flags; scalar_t__ r_dupack; scalar_t__ r_end; scalar_t__ r_start; } ;
typedef scalar_t__ int32_t ;


 int BBR_HAS_FIN ;
 scalar_t__ SEQ_GEQ (scalar_t__,scalar_t__) ;
 int TAILQ_INSERT_AFTER (int *,struct bbr_sendmap*,struct bbr_sendmap*,int ) ;
 struct bbr_sendmap* bbr_alloc_full_limit (struct tcp_bbr*) ;
 int bbr_clone_rsm (struct tcp_bbr*,struct bbr_sendmap*,struct bbr_sendmap*,scalar_t__) ;
 int bbr_update_rsm (struct tcpcb*,struct tcp_bbr*,struct bbr_sendmap*,scalar_t__,scalar_t__) ;
 int r_next ;
 int r_tnext ;

__attribute__((used)) static uint32_t
bbr_update_entry(struct tcpcb *tp, struct tcp_bbr *bbr,
    struct bbr_sendmap *rsm, uint32_t cts, int32_t *lenp, uint32_t pacing_time)
{




 struct bbr_sendmap *nrsm;
 uint32_t c_end;
 int32_t len;

 len = *lenp;
 c_end = rsm->r_start + len;
 if (SEQ_GEQ(c_end, rsm->r_end)) {




  bbr_update_rsm(tp, bbr, rsm, cts, pacing_time);
  if (c_end == rsm->r_end) {
   *lenp = 0;
   return (0);
  } else {
   int32_t act_len;


   act_len = rsm->r_end - rsm->r_start;
   *lenp = (len - act_len);
   return (rsm->r_end);
  }

 }




 nrsm = bbr_alloc_full_limit(bbr);
 if (nrsm == ((void*)0)) {
  *lenp = 0;
  return (0);
 }







 bbr_clone_rsm(bbr, nrsm, rsm, c_end);
 TAILQ_INSERT_AFTER(&bbr->r_ctl.rc_map, rsm, nrsm, r_next);
 nrsm->r_dupack = 0;
 if (rsm->r_in_tmap) {
  TAILQ_INSERT_AFTER(&bbr->r_ctl.rc_tmap, rsm, nrsm, r_tnext);
  nrsm->r_in_tmap = 1;
 }
 rsm->r_flags &= (~BBR_HAS_FIN);
 bbr_update_rsm(tp, bbr, rsm, cts, pacing_time);
 *lenp = 0;
 return (0);
}
