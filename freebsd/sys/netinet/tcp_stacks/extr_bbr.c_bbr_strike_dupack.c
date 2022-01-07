
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rc_tmap; } ;
struct tcp_bbr {int r_wanted_output; TYPE_1__ r_ctl; } ;
struct bbr_sendmap {int r_dupack; } ;


 int DUP_ACK_THRESHOLD ;
 struct bbr_sendmap* TAILQ_FIRST (int *) ;

__attribute__((used)) static void
bbr_strike_dupack(struct tcp_bbr *bbr)
{
 struct bbr_sendmap *rsm;

 rsm = TAILQ_FIRST(&bbr->r_ctl.rc_tmap);
 if (rsm && (rsm->r_dupack < 0xff)) {
  rsm->r_dupack++;
  if (rsm->r_dupack >= DUP_ACK_THRESHOLD)
   bbr->r_wanted_output = 1;
 }
}
