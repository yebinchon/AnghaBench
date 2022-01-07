
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipfw_flow_id {int dummy; } ;
struct TYPE_2__ {scalar_t__ subtype; } ;
struct dn_sch {int sched_nr; int flags; int sched_mask; scalar_t__ buckets; TYPE_1__ oid; } ;
struct dn_pipe8 {int burst; } ;
struct dn_pipe7 {int pipe_nr; int delay; int bandwidth; } ;
struct dn_link {int link_nr; int burst; int delay; int bandwidth; } ;
struct dn_fs {int fs_nr; int sched_nr; int flags; int flow_mask; scalar_t__ buckets; } ;


 int DN_HAVE_MASK ;
 int DN_MAX_ID ;
 int bzero (int *,int) ;
 int dn_compat_config_queue (struct dn_fs*,void*) ;
 int is7 ;

__attribute__((used)) static int
dn_compat_config_pipe(struct dn_sch *sch, struct dn_link *p,
        struct dn_fs *fs, void* v)
{
 struct dn_pipe7 *p7 = (struct dn_pipe7 *)v;
 struct dn_pipe8 *p8 = (struct dn_pipe8 *)v;
 int i = p7->pipe_nr;

 sch->sched_nr = i;
 sch->oid.subtype = 0;
 p->link_nr = i;
 fs->fs_nr = i + 2*DN_MAX_ID;
 fs->sched_nr = i + DN_MAX_ID;


 p->bandwidth = p7->bandwidth;
 p->delay = p7->delay;
 if (!is7) {

  p->burst = p8->burst;
 }


 dn_compat_config_queue(fs, v);
 fs->fs_nr = i + 2*DN_MAX_ID;
 fs->sched_nr = i + DN_MAX_ID;


 sch->buckets = fs->buckets;
 fs->buckets = 0;
 if (fs->flags & DN_HAVE_MASK) {
  sch->flags |= DN_HAVE_MASK;
  fs->flags &= ~DN_HAVE_MASK;
  sch->sched_mask = fs->flow_mask;
  bzero(&fs->flow_mask, sizeof(struct ipfw_flow_id));
 }

 return 0;
}
