
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rc_free; int rc_num_maps_alloced; } ;
struct tcp_rack {scalar_t__ rc_free_cnt; TYPE_1__ r_ctl; } ;
struct rack_sendmap {int dummy; } ;


 int M_NOWAIT ;
 struct rack_sendmap* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct rack_sendmap*,int ) ;
 int counter_u64_add (int ,int) ;
 int r_tnext ;
 int rack_to_alloc ;
 int rack_to_alloc_emerg ;
 int rack_zone ;
 struct rack_sendmap* uma_zalloc (int ,int ) ;

__attribute__((used)) static struct rack_sendmap *
rack_alloc(struct tcp_rack *rack)
{
 struct rack_sendmap *rsm;

 rsm = uma_zalloc(rack_zone, M_NOWAIT);
 if (rsm) {
  rack->r_ctl.rc_num_maps_alloced++;
  counter_u64_add(rack_to_alloc, 1);
  return (rsm);
 }
 if (rack->rc_free_cnt) {
  counter_u64_add(rack_to_alloc_emerg, 1);
  rsm = TAILQ_FIRST(&rack->r_ctl.rc_free);
  TAILQ_REMOVE(&rack->r_ctl.rc_free, rsm, r_tnext);
  rack->rc_free_cnt--;
  return (rsm);
 }
 return (((void*)0));
}
