
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {TYPE_1__* v_rdev; } ;
struct snapdata {int sn_lock; } ;
struct TYPE_2__ {struct snapdata* si_snapdata; } ;


 int LK_EXCLUSIVE ;
 int LK_INTERLOCK ;
 int LK_NOWAIT ;
 int LK_SLEEPFAIL ;
 int VI_LOCK (struct vnode*) ;
 int * VI_MTX (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 struct snapdata* ffs_snapdata_alloc () ;
 int ffs_snapdata_free (struct snapdata*) ;
 int lockmgr (int *,int,int *) ;
 int panic (char*,int) ;

__attribute__((used)) static struct snapdata *
ffs_snapdata_acquire(struct vnode *devvp)
{
 struct snapdata *nsn, *sn;
 int error;






 nsn = ffs_snapdata_alloc();

 for (;;) {
  VI_LOCK(devvp);
  sn = devvp->v_rdev->si_snapdata;
  if (sn == ((void*)0)) {






   error = lockmgr(&nsn->sn_lock, LK_EXCLUSIVE |
       LK_NOWAIT, ((void*)0));
   if (error != 0)
    panic("leaked sn, lockmgr error %d", error);
   sn = devvp->v_rdev->si_snapdata = nsn;
   VI_UNLOCK(devvp);
   nsn = ((void*)0);
   break;
  }





  error = lockmgr(&sn->sn_lock, LK_INTERLOCK |
      LK_EXCLUSIVE | LK_SLEEPFAIL, VI_MTX(devvp));
  if (error == 0)
   break;
 }




 if (nsn != ((void*)0))
  ffs_snapdata_free(nsn);

 return (sn);
}
