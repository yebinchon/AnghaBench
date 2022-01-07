
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rc_mtree; int rc_tmap; } ;
struct tcp_rack {TYPE_1__ r_ctl; } ;
struct rack_sendmap {scalar_t__ r_dupack; int r_flags; scalar_t__ r_limit_type; scalar_t__ r_in_tmap; scalar_t__ r_rtr_bytes; int r_end; } ;


 int RACK_HAS_FIN ;
 int RACK_RWND_COLLAPSED ;
 int RACK_TLP ;
 struct rack_sendmap* RB_REMOVE (int ,int *,struct rack_sendmap*) ;
 int TAILQ_REMOVE (int *,struct rack_sendmap*,int ) ;
 int panic (char*,struct tcp_rack*,struct rack_sendmap*,struct rack_sendmap*) ;
 int r_tnext ;
 int rack_free (struct tcp_rack*,struct rack_sendmap*) ;
 int rack_rb_tree_head ;

__attribute__((used)) static struct rack_sendmap *
rack_merge_rsm(struct tcp_rack *rack,
        struct rack_sendmap *l_rsm,
        struct rack_sendmap *r_rsm)
{
 struct rack_sendmap *rm;

 l_rsm->r_end = r_rsm->r_end;
 if (l_rsm->r_dupack < r_rsm->r_dupack)
  l_rsm->r_dupack = r_rsm->r_dupack;
 if (r_rsm->r_rtr_bytes)
  l_rsm->r_rtr_bytes += r_rsm->r_rtr_bytes;
 if (r_rsm->r_in_tmap) {

  TAILQ_REMOVE(&rack->r_ctl.rc_tmap, r_rsm, r_tnext);
  r_rsm->r_in_tmap = 0;
 }

 if (r_rsm->r_flags & RACK_HAS_FIN)
  l_rsm->r_flags |= RACK_HAS_FIN;
 if (r_rsm->r_flags & RACK_TLP)
  l_rsm->r_flags |= RACK_TLP;
 if (r_rsm->r_flags & RACK_RWND_COLLAPSED)
  l_rsm->r_flags |= RACK_RWND_COLLAPSED;
 rm = RB_REMOVE(rack_rb_tree_head, &rack->r_ctl.rc_mtree, r_rsm);






 if ((r_rsm->r_limit_type == 0) && (l_rsm->r_limit_type != 0)) {

  r_rsm->r_limit_type = l_rsm->r_limit_type;
  l_rsm->r_limit_type = 0;
 }
 rack_free(rack, r_rsm);
 return(l_rsm);
}
