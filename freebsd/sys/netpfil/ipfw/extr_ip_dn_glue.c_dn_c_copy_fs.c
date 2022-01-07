
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int buckets; int flags; int * par; int sched_nr; int flow_mask; int max_p; int w_q; int plr; int qsize; int fs_nr; } ;
struct dn_fsk {TYPE_2__ fs; int min_th; int max_th; } ;
struct TYPE_3__ {struct dn_flow_set* sle_next; } ;
struct dn_flow_set {int rq_elements; int rq_size; int flags_fs; int weight; int parent_nr; int flow_mask; int max_p; int min_th; int max_th; int w_q; int plr; int qsize; int fs_nr; TYPE_1__ next; } ;
struct copy_args {int* start; } ;


 scalar_t__ DN_IS_QUEUE ;
 int convertflags2old (int ) ;

int
dn_c_copy_fs(struct dn_fsk *f, struct copy_args *a, int nq)
{
 struct dn_flow_set *fs = (struct dn_flow_set *)*a->start;

 fs->next.sle_next = (struct dn_flow_set *)DN_IS_QUEUE;
 fs->fs_nr = f->fs.fs_nr;
 fs->qsize = f->fs.qsize;
 fs->plr = f->fs.plr;
 fs->w_q = f->fs.w_q;
 fs->max_th = f->max_th;
 fs->min_th = f->min_th;
 fs->max_p = f->fs.max_p;
 fs->flow_mask = f->fs.flow_mask;
 fs->rq_elements = nq;
 fs->rq_size = (f->fs.buckets ? f->fs.buckets : 1);
 fs->parent_nr = f->fs.sched_nr;
 fs->weight = f->fs.par[0];

 fs->flags_fs = convertflags2old(f->fs.flags);
 *a->start += sizeof(struct dn_flow_set);
 return 0;
}
