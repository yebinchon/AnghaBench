
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ufs2_daddr_t ;
struct vnode {int v_vflag; TYPE_1__* v_rdev; } ;
struct snapdata {int sn_lock; scalar_t__ sn_listsize; int * sn_blklist; int sn_head; } ;
struct TYPE_2__ {struct snapdata* si_snapdata; } ;


 int ASSERT_VI_LOCKED (struct vnode*,char*) ;
 int LK_DRAIN ;
 int LK_INTERLOCK ;
 int LK_RELEASE ;
 int M_UFSMNT ;
 int * TAILQ_FIRST (int *) ;
 int * VI_MTX (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 int VV_COPYONWRITE ;
 int ffs_snapdata_free (struct snapdata*) ;
 int free (int *,int ) ;
 int lockmgr (int *,int,int *) ;

__attribute__((used)) static void
try_free_snapdata(struct vnode *devvp)
{
 struct snapdata *sn;
 ufs2_daddr_t *snapblklist;

 ASSERT_VI_LOCKED(devvp, "try_free_snapdata");
 sn = devvp->v_rdev->si_snapdata;

 if (sn == ((void*)0) || TAILQ_FIRST(&sn->sn_head) != ((void*)0) ||
     (devvp->v_vflag & VV_COPYONWRITE) == 0) {
  VI_UNLOCK(devvp);
  return;
 }

 devvp->v_rdev->si_snapdata = ((void*)0);
 devvp->v_vflag &= ~VV_COPYONWRITE;
 lockmgr(&sn->sn_lock, LK_DRAIN|LK_INTERLOCK, VI_MTX(devvp));
 snapblklist = sn->sn_blklist;
 sn->sn_blklist = ((void*)0);
 sn->sn_listsize = 0;
 lockmgr(&sn->sn_lock, LK_RELEASE, ((void*)0));
 if (snapblklist != ((void*)0))
  free(snapblklist, M_UFSMNT);
 ffs_snapdata_free(sn);
}
