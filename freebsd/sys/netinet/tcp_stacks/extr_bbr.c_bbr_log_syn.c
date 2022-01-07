
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct tcpopt {int dummy; } ;
struct tcpcb {scalar_t__ t_fb_ptr; } ;
struct TYPE_2__ {int rc_map; struct bbr_sendmap* rc_next; int rc_tmap; int rc_holes_rxt; int rc_rcvtime; } ;
struct tcp_bbr {TYPE_1__ r_ctl; } ;
struct bbr_sendmap {int r_flags; int r_end; int r_start; scalar_t__ r_in_tmap; scalar_t__ r_rtr_bytes; } ;


 int BBR_CUM_ACKED ;
 int BBR_HAS_SYN ;
 void* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct bbr_sendmap*,int ) ;
 int bbr_free (struct tcp_bbr*,struct bbr_sendmap*) ;
 int bbr_update_rtt (struct tcpcb*,struct tcp_bbr*,struct bbr_sendmap*,struct tcpopt*,int ,int ,int ) ;
 int r_next ;
 int r_tnext ;

__attribute__((used)) static void
bbr_log_syn(struct tcpcb *tp, struct tcpopt *to)
{
 struct tcp_bbr *bbr;
 struct bbr_sendmap *rsm;
 uint32_t cts;

 bbr = (struct tcp_bbr *)tp->t_fb_ptr;
 cts = bbr->r_ctl.rc_rcvtime;
 rsm = TAILQ_FIRST(&bbr->r_ctl.rc_map);
 if (rsm && (rsm->r_flags & BBR_HAS_SYN)) {
  if ((rsm->r_end - rsm->r_start) <= 1) {

   bbr->r_ctl.rc_holes_rxt -= rsm->r_rtr_bytes;
   rsm->r_rtr_bytes = 0;
   TAILQ_REMOVE(&bbr->r_ctl.rc_map, rsm, r_next);
   if (rsm->r_in_tmap) {
    TAILQ_REMOVE(&bbr->r_ctl.rc_tmap, rsm, r_tnext);
    rsm->r_in_tmap = 0;
   }
   if (bbr->r_ctl.rc_next == rsm) {

    bbr->r_ctl.rc_next = TAILQ_FIRST(&bbr->r_ctl.rc_map);
   }
   if (to != ((void*)0))
    bbr_update_rtt(tp, bbr, rsm, to, cts, BBR_CUM_ACKED, 0);
   bbr_free(bbr, rsm);
  } else {

   rsm->r_flags &= ~BBR_HAS_SYN;
   rsm->r_start++;
  }
 }
}
