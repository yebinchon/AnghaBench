
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dn_fsk_head {int dummy; } ;
struct TYPE_5__ {int sched_nr; int fs_nr; } ;
struct dn_fsk {TYPE_3__* sched; struct dn_fsk* w_q_lookup; TYPE_1__ fs; } ;
struct TYPE_8__ {struct dn_fsk_head fsu; int fsk_count; } ;
struct TYPE_7__ {TYPE_2__* fp; struct dn_fsk_head fsk_list; } ;
struct TYPE_6__ {int (* free_fsk ) (struct dn_fsk*) ;} ;


 int DN_DELETE_FS ;
 int DN_DESTROY ;
 int DN_DETACH ;
 int M_DUMMYNET ;
 int ND (char*,int ,int ,char*,char*,char*) ;
 int SLIST_INSERT_HEAD (struct dn_fsk_head*,struct dn_fsk*,int ) ;
 int SLIST_REMOVE (struct dn_fsk_head*,struct dn_fsk*,int ,int ) ;
 int aqm_cleanup_deconfig_fs (struct dn_fsk*) ;
 int bzero (struct dn_fsk*,int) ;
 TYPE_4__ dn_cfg ;
 int dn_fsk ;
 int free (struct dn_fsk*,int ) ;
 int qht_delete (struct dn_fsk*,int) ;
 int sch_chain ;
 int stub1 (struct dn_fsk*) ;

__attribute__((used)) static void
fsk_detach(struct dn_fsk *fs, int flags)
{
 if (flags & DN_DELETE_FS)
  flags |= DN_DESTROY;
 ND("fs %d from sched %d flags %s %s %s",
  fs->fs.fs_nr, fs->fs.sched_nr,
  (flags & DN_DELETE_FS) ? "DEL_FS":"",
  (flags & DN_DESTROY) ? "DEL":"",
  (flags & DN_DETACH) ? "DET":"");
 if (flags & DN_DETACH) {
  struct dn_fsk_head *h;
  h = fs->sched ? &fs->sched->fsk_list : &dn_cfg.fsu;
  SLIST_REMOVE(h, fs, dn_fsk, sch_chain);
 }



 if (fs->w_q_lookup)
  free(fs->w_q_lookup, M_DUMMYNET);
 fs->w_q_lookup = ((void*)0);
 qht_delete(fs, flags);




 if (fs->sched && fs->sched->fp->free_fsk)
  fs->sched->fp->free_fsk(fs);
 fs->sched = ((void*)0);
 if (flags & DN_DELETE_FS) {
  bzero(fs, sizeof(*fs));
  free(fs, M_DUMMYNET);
  dn_cfg.fsk_count--;
 } else {
  SLIST_INSERT_HEAD(&dn_cfg.fsu, fs, sch_chain);
 }
}
