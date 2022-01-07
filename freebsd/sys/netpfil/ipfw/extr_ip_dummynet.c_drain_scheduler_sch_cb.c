
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct dn_schk {int * siht; int drain_bucket; TYPE_1__ sch; } ;


 scalar_t__ DNHT_SCAN_DEL ;
 int DN_HAVE_MASK ;
 int dn_ht_scan_bucket (int *,int *,scalar_t__ (*) (int *,int *),int *) ;
 scalar_t__ drain_scheduler_cb (int *,int *) ;

__attribute__((used)) static int
drain_scheduler_sch_cb(void *_s, void *arg)
{
 struct dn_schk *s = _s;

 if (s->sch.flags & DN_HAVE_MASK) {
  dn_ht_scan_bucket(s->siht, &s->drain_bucket,
    drain_scheduler_cb, ((void*)0));
  s->drain_bucket++;
 } else {
  if (s->siht) {
   if (drain_scheduler_cb(s->siht, ((void*)0)) == DNHT_SCAN_DEL)
    s->siht = ((void*)0);
  }
 }
 return 0;
}
