
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int rc_tmap; } ;
struct tcp_bbr {TYPE_1__ r_ctl; } ;
struct bbr_sendmap {int r_rtr_cnt; int * r_tim_lastsent; } ;


 struct bbr_sendmap* TAILQ_FIRST (int *) ;

__attribute__((used)) static uint32_t
bbr_get_earliest_send_outstanding(struct tcp_bbr *bbr, struct bbr_sendmap *u_rsm, uint32_t cts)
{
 struct bbr_sendmap *rsm;

 rsm = TAILQ_FIRST(&bbr->r_ctl.rc_tmap);
 if ((rsm == ((void*)0)) || (u_rsm == rsm))
  return (cts);
 return(rsm->r_tim_lastsent[(rsm->r_rtr_cnt-1)]);
}
