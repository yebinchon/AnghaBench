
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_vflag; int v_iflag; struct mount* v_mount; } ;
struct mount {int mnt_kern_flag; scalar_t__ mnt_nvnodelistsize; int mnt_listmtx; int mnt_activevnodelistsize; int mnt_activevnodelist; int mnt_nvnodelist; } ;


 int ASSERT_VOP_ELOCKED (struct vnode*,char*) ;
 int EBUSY ;
 int KASSERT (int,char*) ;
 int MNTK_UNMOUNT ;
 int MNTK_UNMOUNTF ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int MNT_REF (struct mount*) ;
 int TAILQ_INSERT_HEAD (int *,struct vnode*,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct vnode*,int ) ;
 int VI_ACTIVE ;
 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 int VNASSERT (int,struct vnode*,char*) ;
 int VV_FORCEINSMQ ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int v_actfreelist ;
 int v_nmntvnodes ;

int
insmntque1(struct vnode *vp, struct mount *mp,
 void (*dtr)(struct vnode *, void *), void *dtr_arg)
{

 KASSERT(vp->v_mount == ((void*)0),
  ("insmntque: vnode already on per mount vnode list"));
 VNASSERT(mp != ((void*)0), vp, ("Don't call insmntque(foo, NULL)"));
 ASSERT_VOP_ELOCKED(vp, "insmntque: non-locked vp");
 MNT_ILOCK(mp);
 VI_LOCK(vp);
 if (((mp->mnt_kern_flag & MNTK_UNMOUNT) != 0 &&
     ((mp->mnt_kern_flag & MNTK_UNMOUNTF) != 0 ||
     mp->mnt_nvnodelistsize == 0)) &&
     (vp->v_vflag & VV_FORCEINSMQ) == 0) {
  VI_UNLOCK(vp);
  MNT_IUNLOCK(mp);
  if (dtr != ((void*)0))
   dtr(vp, dtr_arg);
  return (EBUSY);
 }
 vp->v_mount = mp;
 MNT_REF(mp);
 TAILQ_INSERT_TAIL(&mp->mnt_nvnodelist, vp, v_nmntvnodes);
 VNASSERT(mp->mnt_nvnodelistsize >= 0, vp,
  ("neg mount point vnode list size"));
 mp->mnt_nvnodelistsize++;
 KASSERT((vp->v_iflag & VI_ACTIVE) == 0,
     ("Activating already active vnode"));
 vp->v_iflag |= VI_ACTIVE;
 mtx_lock(&mp->mnt_listmtx);
 TAILQ_INSERT_HEAD(&mp->mnt_activevnodelist, vp, v_actfreelist);
 mp->mnt_activevnodelistsize++;
 mtx_unlock(&mp->mnt_listmtx);
 VI_UNLOCK(vp);
 MNT_IUNLOCK(mp);
 return (0);
}
