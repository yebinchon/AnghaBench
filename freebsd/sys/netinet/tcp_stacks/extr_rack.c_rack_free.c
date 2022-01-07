
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rc_num_maps_alloced; int rc_free; struct rack_sendmap* rc_sacklast; struct rack_sendmap* rc_tlpsend; int rc_num_split_allocs; } ;
struct tcp_rack {scalar_t__ rc_free_cnt; TYPE_1__ r_ctl; } ;
struct rack_sendmap {scalar_t__ r_limit_type; } ;


 int TAILQ_INSERT_TAIL (int *,struct rack_sendmap*,int ) ;
 int memset (struct rack_sendmap*,int ,int) ;
 int r_tnext ;
 scalar_t__ rack_free_cache ;
 int rack_zone ;
 int uma_zfree (int ,struct rack_sendmap*) ;

__attribute__((used)) static void
rack_free(struct tcp_rack *rack, struct rack_sendmap *rsm)
{
 if (rsm->r_limit_type) {

  rack->r_ctl.rc_num_split_allocs--;
 }
 if (rack->r_ctl.rc_tlpsend == rsm)
  rack->r_ctl.rc_tlpsend = ((void*)0);
 if (rack->r_ctl.rc_sacklast == rsm)
  rack->r_ctl.rc_sacklast = ((void*)0);
 if (rack->rc_free_cnt < rack_free_cache) {
  memset(rsm, 0, sizeof(struct rack_sendmap));
  TAILQ_INSERT_TAIL(&rack->r_ctl.rc_free, rsm, r_tnext);
  rsm->r_limit_type = 0;
  rack->rc_free_cnt++;
  return;
 }
 rack->r_ctl.rc_num_maps_alloced--;
 uma_zfree(rack_zone, rsm);
}
