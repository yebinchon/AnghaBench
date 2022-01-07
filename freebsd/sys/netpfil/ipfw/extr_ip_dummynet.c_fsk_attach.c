
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int flags; int sched_nr; int sched_mask; } ;
struct dn_schk {TYPE_2__ sch; TYPE_1__* fp; int fsk_list; } ;
struct TYPE_7__ {int flags; int fs_nr; int flow_mask; } ;
struct dn_fsk {TYPE_3__ fs; int fsk_mask; int * qht; struct dn_schk* sched; } ;
struct TYPE_8__ {int fsu; } ;
struct TYPE_5__ {int (* new_fsk ) (struct dn_fsk*) ;} ;


 int D (char*,int ,int ) ;
 int DN_HAVE_MASK ;
 int DN_IS_RED ;
 int DN_QHT_HASH ;
 int ND (char*,int ,int ) ;
 int SLIST_INSERT_HEAD (int *,struct dn_fsk*,int ) ;
 int SLIST_REMOVE (int *,struct dn_fsk*,int ,int ) ;
 int config_red (struct dn_fsk*) ;
 TYPE_4__ dn_cfg ;
 int dn_fsk ;
 int flow_id_or (int *,int *) ;
 scalar_t__ nonzero_mask (int *) ;
 int sch_chain ;
 int stub1 (struct dn_fsk*) ;

__attribute__((used)) static void
fsk_attach(struct dn_fsk *fs, struct dn_schk *s)
{
 ND("remove fs %d from fsunlinked, link to sched %d",
  fs->fs.fs_nr, s->sch.sched_nr);
 SLIST_REMOVE(&dn_cfg.fsu, fs, dn_fsk, sch_chain);
 fs->sched = s;
 SLIST_INSERT_HEAD(&s->fsk_list, fs, sch_chain);
 if (s->fp->new_fsk)
  s->fp->new_fsk(fs);

 fs->fsk_mask = fs->fs.flow_mask;
 if (fs->sched->sch.flags & DN_HAVE_MASK)
  flow_id_or(&fs->sched->sch.sched_mask, &fs->fsk_mask);
 if (fs->qht) {
  D("XXX TODO requeue from fs %d to sch %d",
   fs->fs.fs_nr, s->sch.sched_nr);
  fs->qht = ((void*)0);
 }

 if (nonzero_mask(&fs->fsk_mask))
  fs->fs.flags |= DN_QHT_HASH;
 else
  fs->fs.flags &= ~DN_QHT_HASH;


 if (fs->fs.flags & DN_IS_RED)
  config_red(fs);
}
