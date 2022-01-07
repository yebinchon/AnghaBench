
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmlock {int lock_object; int rm_lock_mtx; int rm_lock_sx; int rm_activeReaders; int rm_writecpus; } ;
struct lock_class {int dummy; } ;


 int LIST_INIT (int *) ;
 int LO_NEW ;
 int LO_RECURSABLE ;
 int LO_SLEEPABLE ;
 int LO_WITNESS ;
 int MTX_NEW ;
 int MTX_NOWITNESS ;
 int RM_NEW ;
 int RM_NOWITNESS ;
 int RM_RECURSE ;
 int RM_SLEEPABLE ;
 int SX_NEW ;
 int SX_NOWITNESS ;
 int all_cpus ;
 struct lock_class lock_class_rm ;
 struct lock_class lock_class_rm_sleepable ;
 int lock_init (int *,struct lock_class*,char const*,int *,int) ;
 int mtx_init (int *,char const*,char*,int) ;
 int sx_init_flags (int *,char*,int) ;

void
rm_init_flags(struct rmlock *rm, const char *name, int opts)
{
 struct lock_class *lc;
 int liflags, xflags;

 liflags = 0;
 if (!(opts & RM_NOWITNESS))
  liflags |= LO_WITNESS;
 if (opts & RM_RECURSE)
  liflags |= LO_RECURSABLE;
 if (opts & RM_NEW)
  liflags |= LO_NEW;
 rm->rm_writecpus = all_cpus;
 LIST_INIT(&rm->rm_activeReaders);
 if (opts & RM_SLEEPABLE) {
  liflags |= LO_SLEEPABLE;
  lc = &lock_class_rm_sleepable;
  xflags = (opts & RM_NEW ? SX_NEW : 0);
  sx_init_flags(&rm->rm_lock_sx, "rmlock_sx",
      xflags | SX_NOWITNESS);
 } else {
  lc = &lock_class_rm;
  xflags = (opts & RM_NEW ? MTX_NEW : 0);
  mtx_init(&rm->rm_lock_mtx, name, "rmlock_mtx",
      xflags | MTX_NOWITNESS);
 }
 lock_init(&rm->lock_object, lc, name, ((void*)0), liflags);
}
