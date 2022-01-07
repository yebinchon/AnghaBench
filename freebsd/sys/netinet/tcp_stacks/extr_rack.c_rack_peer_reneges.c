
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tcp_seq ;
struct TYPE_2__ {int rack_sf; int rc_mtree; int rc_tmap; int rc_sacked; } ;
struct tcp_rack {TYPE_1__ r_ctl; } ;
struct rack_sendmap {int r_flags; int r_in_tmap; scalar_t__ r_start; scalar_t__ r_end; } ;


 int RACK_ACKED ;
 int RACK_SACK_PASSED ;
 int RACK_WAS_SACKPASS ;
 struct rack_sendmap* RB_NEXT (int ,int *,struct rack_sendmap*) ;
 int TAILQ_INSERT_AFTER (int *,struct rack_sendmap*,struct rack_sendmap*,int ) ;
 int TAILQ_INSERT_HEAD (int *,struct rack_sendmap*,int ) ;
 int panic (char*,struct tcp_rack*,struct rack_sendmap*,int) ;
 int r_tnext ;
 int rack_rb_tree_head ;
 scalar_t__ rack_use_sack_filter ;
 int sack_filter_clear (int *,int ) ;

__attribute__((used)) static void inline
rack_peer_reneges(struct tcp_rack *rack, struct rack_sendmap *rsm, tcp_seq th_ack)
{
 struct rack_sendmap *tmap;

 tmap = ((void*)0);
 while (rsm && (rsm->r_flags & RACK_ACKED)) {

  rack->r_ctl.rc_sacked -= (rsm->r_end - rsm->r_start);






  rsm->r_flags &= ~(RACK_ACKED|RACK_SACK_PASSED|RACK_WAS_SACKPASS);

  if (tmap == ((void*)0)) {
   TAILQ_INSERT_HEAD(&rack->r_ctl.rc_tmap, rsm, r_tnext);
   tmap = rsm;
  } else {
   TAILQ_INSERT_AFTER(&rack->r_ctl.rc_tmap, tmap, rsm, r_tnext);
   tmap = rsm;
  }
  tmap->r_in_tmap = 1;
  rsm = RB_NEXT(rack_rb_tree_head, &rack->r_ctl.rc_mtree, rsm);
 }




 if (rack_use_sack_filter)
  sack_filter_clear(&rack->r_ctl.rack_sf, th_ack);

}
