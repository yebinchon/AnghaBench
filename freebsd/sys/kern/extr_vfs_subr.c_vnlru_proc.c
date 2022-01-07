
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mount {int dummy; } ;
struct TYPE_2__ {int v_page_count; } ;


 int EVENTHANDLER_REGISTER (int ,int ,int ,int ) ;
 int MBF_MNTLSTLOCK ;
 int MBF_NOWAIT ;
 int PDROP ;
 int PPAUSE ;
 int PRI_USER ;
 int PVFS ;
 int SHUTDOWN_PRI_FIRST ;
 struct mount* TAILQ_FIRST (int *) ;
 struct mount* TAILQ_NEXT (struct mount*,int ) ;
 int UMA_RECLAIM_DRAIN ;
 unsigned long desiredvnodes ;
 unsigned long freevnodes ;
 int hz ;
 int kern_yield (int ) ;
 int kproc_shutdown ;
 int kproc_suspend_check (int ) ;
 int mnt_list ;
 int mountlist ;
 int mountlist_mtx ;
 int msleep (int ,int *,int,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 unsigned long numvnodes ;
 int shutdown_pre_sync ;
 int tsleep (int ,int ,char*,int) ;
 int uma_reclaim (int ) ;
 scalar_t__ vfs_busy (struct mount*,int) ;
 int vfs_unbusy (struct mount*) ;
 int vhiwat ;
 int vlowat ;
 scalar_t__ vlrureclaim (struct mount*,int,int) ;
 TYPE_1__ vm_cnt ;
 int vnlru_free_locked (unsigned long,int *) ;
 int vnlru_nowhere ;
 int vnlruproc ;
 scalar_t__ vnlruproc_sig ;
 int vnode_free_list_mtx ;
 int vsmalltrigger ;
 int vspace () ;
 scalar_t__ vstir ;
 int wakeup (scalar_t__*) ;

__attribute__((used)) static void
vnlru_proc(void)
{
 struct mount *mp, *nmp;
 unsigned long onumvnodes;
 int done, force, trigger, usevnodes, vsp;
 bool reclaim_nc_src;

 EVENTHANDLER_REGISTER(shutdown_pre_sync, kproc_shutdown, vnlruproc,
     SHUTDOWN_PRI_FIRST);

 force = 0;
 for (;;) {
  kproc_suspend_check(vnlruproc);
  mtx_lock(&vnode_free_list_mtx);





  if (numvnodes > desiredvnodes)
   vnlru_free_locked(numvnodes - desiredvnodes, ((void*)0));







  if (vstir && force == 0) {
   force = 1;
   vstir = 0;
  }
  vsp = vspace();
  if (vsp >= vlowat && force == 0) {
   vnlruproc_sig = 0;
   wakeup(&vnlruproc_sig);
   msleep(vnlruproc, &vnode_free_list_mtx,
       PVFS|PDROP, "vlruwt", hz);
   continue;
  }
  mtx_unlock(&vnode_free_list_mtx);
  done = 0;
  onumvnodes = numvnodes;







  if (numvnodes <= desiredvnodes)
   usevnodes = numvnodes - freevnodes;
  else
   usevnodes = numvnodes;
  if (usevnodes <= 0)
   usevnodes = 1;
  trigger = vm_cnt.v_page_count * 2 / usevnodes;
  if (force < 2)
   trigger = vsmalltrigger;
  reclaim_nc_src = force >= 3;
  mtx_lock(&mountlist_mtx);
  for (mp = TAILQ_FIRST(&mountlist); mp != ((void*)0); mp = nmp) {
   if (vfs_busy(mp, MBF_NOWAIT | MBF_MNTLSTLOCK)) {
    nmp = TAILQ_NEXT(mp, mnt_list);
    continue;
   }
   done += vlrureclaim(mp, reclaim_nc_src, trigger);
   mtx_lock(&mountlist_mtx);
   nmp = TAILQ_NEXT(mp, mnt_list);
   vfs_unbusy(mp);
  }
  mtx_unlock(&mountlist_mtx);
  if (onumvnodes > desiredvnodes && numvnodes <= desiredvnodes)
   uma_reclaim(UMA_RECLAIM_DRAIN);
  if (done == 0) {
   if (force == 0 || force == 1) {
    force = 2;
    continue;
   }
   if (force == 2) {
    force = 3;
    continue;
   }
   force = 0;
   vnlru_nowhere++;
   tsleep(vnlruproc, PPAUSE, "vlrup", hz * 3);
  } else
   kern_yield(PRI_USER);




  vsp = vspace();
  force = vsp < vhiwat;
 }
}
