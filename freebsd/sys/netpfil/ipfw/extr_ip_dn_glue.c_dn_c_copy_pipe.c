
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int buckets; int sched_mask; } ;
struct dn_link {int delay; void* link_nr; int burst; int bandwidth; } ;
struct dn_schk {TYPE_2__ sch; struct dn_profile* profile; struct dn_fsk* fs; struct dn_link link; } ;
struct dn_profile {int samples_no; int loss_level; int name; } ;
struct dn_flow_set {int rq_size; int rq_elements; int flags_fs; int max_p; int min_th; int max_th; int w_q; int plr; int qsize; void* parent_nr; int flow_mask; } ;
struct dn_pipe8 {int burst; int samples_no; int loss_level; int name; struct dn_flow_set fs; } ;
struct TYPE_4__ {struct dn_pipe7* sle_next; } ;
struct dn_pipe7 {int delay; void* pipe_nr; int bandwidth; TYPE_1__ next; struct dn_flow_set fs; } ;
struct TYPE_6__ {int flags; int max_p; int w_q; int plr; int qsize; } ;
struct dn_fsk {TYPE_3__ fs; int min_th; int max_th; } ;
struct copy_args {int* start; } ;


 scalar_t__ DN_IS_PIPE ;
 void* DN_MAX_ID ;
 int convertflags2old (int ) ;
 int div64 (int ,int) ;
 int hz ;
 scalar_t__ is7 ;
 int strncpy (int ,int ,int) ;

int
dn_c_copy_pipe(struct dn_schk *s, struct copy_args *a, int nq)
{
 struct dn_link *l = &s->link;
 struct dn_fsk *f = s->fs;

 struct dn_pipe7 *pipe7 = (struct dn_pipe7 *)*a->start;
 struct dn_pipe8 *pipe8 = (struct dn_pipe8 *)*a->start;
 struct dn_flow_set *fs;
 int size = 0;

 if (is7) {
  fs = &pipe7->fs;
  size = sizeof(struct dn_pipe7);
 } else {
  fs = &pipe8->fs;
  size = sizeof(struct dn_pipe8);
 }


 pipe7->next.sle_next = (struct dn_pipe7 *)DN_IS_PIPE;
 pipe7->bandwidth = l->bandwidth;
 pipe7->delay = l->delay * 1000 / hz;
 pipe7->pipe_nr = l->link_nr - DN_MAX_ID;

 if (!is7) {
  if (s->profile) {
   struct dn_profile *pf = s->profile;
   strncpy(pipe8->name, pf->name, sizeof(pf->name));
   pipe8->loss_level = pf->loss_level;
   pipe8->samples_no = pf->samples_no;
  }
  pipe8->burst = div64(l->burst , 8 * hz);
 }

 fs->flow_mask = s->sch.sched_mask;
 fs->rq_size = s->sch.buckets ? s->sch.buckets : 1;

 fs->parent_nr = l->link_nr - DN_MAX_ID;
 fs->qsize = f->fs.qsize;
 fs->plr = f->fs.plr;
 fs->w_q = f->fs.w_q;
 fs->max_th = f->max_th;
 fs->min_th = f->min_th;
 fs->max_p = f->fs.max_p;
 fs->rq_elements = nq;

 fs->flags_fs = convertflags2old(f->fs.flags);

 *a->start += size;
 return 0;
}
