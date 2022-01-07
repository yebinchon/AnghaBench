
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct thread {int dummy; } ;
struct sbuf {int dummy; } ;
struct mount {scalar_t__ mnt_time; } ;
struct TYPE_2__ {int pr_mtx; int pr_root; } ;


 int EVENTHANDLER_INVOKE (int ) ;
 int Giant ;
 int MA_NOTOWNED ;
 struct mount* TAILQ_FIRST (int *) ;
 struct mount* TAILQ_NEXT (struct mount*,int ) ;
 int TSENTER () ;
 int TSEXIT () ;
 int atomic_store_rel_int (int *,int) ;
 struct thread* curthread ;
 int inittodr (scalar_t__) ;
 int mnt_list ;
 int mountlist ;
 int mountlist_mtx ;
 int mountroot ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 TYPE_1__ prison0 ;
 int root_holds_mtx ;
 int root_mount_complete ;
 int rootvnode ;
 int sbuf_clear (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 struct sbuf* sbuf_new_auto () ;
 int vfs_mountroot_conf0 (struct sbuf*) ;
 int vfs_mountroot_devfs (struct thread*,struct mount**) ;
 int vfs_mountroot_parse (struct sbuf*,struct mount*) ;
 int vfs_mountroot_readconf (struct thread*,struct sbuf*) ;
 int vfs_mountroot_shuffle (struct thread*,struct mount*) ;
 int vref (int ) ;
 int wakeup (int *) ;

void
vfs_mountroot(void)
{
 struct mount *mp;
 struct sbuf *sb;
 struct thread *td;
 time_t timebase;
 int error;

 mtx_assert(&Giant, MA_NOTOWNED);

 TSENTER();

 td = curthread;

 sb = sbuf_new_auto();
 vfs_mountroot_conf0(sb);
 sbuf_finish(sb);

 error = vfs_mountroot_devfs(td, &mp);
 while (!error) {
  error = vfs_mountroot_parse(sb, mp);
  if (!error) {
   vfs_mountroot_shuffle(td, mp);
   sbuf_clear(sb);
   error = vfs_mountroot_readconf(td, sb);
   sbuf_finish(sb);
  }
 }

 sbuf_delete(sb);







 timebase = 0;
 mtx_lock(&mountlist_mtx);
 mp = TAILQ_FIRST(&mountlist);
 while (mp != ((void*)0)) {
  if (mp->mnt_time > timebase)
   timebase = mp->mnt_time;
  mp = TAILQ_NEXT(mp, mnt_list);
 }
 mtx_unlock(&mountlist_mtx);
 inittodr(timebase);


 mtx_lock(&prison0.pr_mtx);
 prison0.pr_root = rootvnode;
 vref(prison0.pr_root);
 mtx_unlock(&prison0.pr_mtx);

 mtx_lock(&root_holds_mtx);
 atomic_store_rel_int(&root_mount_complete, 1);
 wakeup(&root_mount_complete);
 mtx_unlock(&root_holds_mtx);

 EVENTHANDLER_INVOKE(mountroot);

 TSEXIT();
}
