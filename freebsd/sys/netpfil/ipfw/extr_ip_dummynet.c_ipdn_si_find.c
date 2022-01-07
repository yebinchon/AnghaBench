
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipfw_flow_id {int dummy; } ;
struct TYPE_2__ {int flags; int sched_mask; } ;
struct dn_schk {scalar_t__ siht; TYPE_1__ sch; } ;
struct dn_sch_inst {int dummy; } ;


 int DNHT_INSERT ;
 int DN_HAVE_MASK ;
 struct dn_sch_inst* dn_ht_find (scalar_t__,uintptr_t,int ,struct dn_schk*) ;
 int flow_id_mask (int *,struct ipfw_flow_id*) ;
 scalar_t__ si_new (int ,int ,struct dn_schk*) ;

struct dn_sch_inst *
ipdn_si_find(struct dn_schk *s, struct ipfw_flow_id *id)
{

 if (s->sch.flags & DN_HAVE_MASK) {
  struct ipfw_flow_id id_t = *id;
  flow_id_mask(&s->sch.sched_mask, &id_t);
  return dn_ht_find(s->siht, (uintptr_t)&id_t,
   DNHT_INSERT, s);
 }
 if (!s->siht)
  s->siht = si_new(0, 0, s);
 return (struct dn_sch_inst *)s->siht;
}
