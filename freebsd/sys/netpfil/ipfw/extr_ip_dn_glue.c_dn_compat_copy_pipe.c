
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct dn_schk {scalar_t__ siht; TYPE_1__ sch; } ;
struct dn_pipe8 {int dummy; } ;
struct dn_flow_queue8 {int dummy; } ;
struct copy_args {int end; int* start; } ;


 int D (char*,int,int) ;
 int DN_HAVE_MASK ;
 int dn_c_copy_pipe (struct dn_schk*,struct copy_args*,int) ;
 int dn_c_copy_q (scalar_t__,struct copy_args*) ;
 int dn_ht_entries (scalar_t__) ;
 int dn_ht_scan (scalar_t__,int (*) (scalar_t__,struct copy_args*),struct copy_args*) ;

int
dn_compat_copy_pipe(struct copy_args *a, void *_o)
{
 int have = a->end - *a->start;
 int need = 0;
 int pipe_size = sizeof(struct dn_pipe8);
 int queue_size = sizeof(struct dn_flow_queue8);
 int n_queue = 0;

 struct dn_schk *s = (struct dn_schk *)_o;




 n_queue = (s->sch.flags & DN_HAVE_MASK ? dn_ht_entries(s->siht) :
      (s->siht ? 1 : 0));
 need = pipe_size + queue_size * n_queue;
 if (have < need) {
  D("have %d < need %d", have, need);
  return 1;
 }

 dn_c_copy_pipe(s, a, n_queue);


 if (s->sch.flags & DN_HAVE_MASK)
  dn_ht_scan(s->siht, dn_c_copy_q, a);
 else if (s->siht)
  dn_c_copy_q(s->siht, a);
 return 0;
}
