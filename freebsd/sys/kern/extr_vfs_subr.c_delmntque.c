
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_iflag; struct mount* v_mount; } ;
struct mount {scalar_t__ mnt_activevnodelistsize; scalar_t__ mnt_nvnodelistsize; int mnt_nvnodelist; int mnt_listmtx; int mnt_activevnodelist; } ;


 int KASSERT (int,char*) ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int MNT_REL (struct mount*) ;
 int TAILQ_REMOVE (int *,struct vnode*,int ) ;
 int VI_ACTIVE ;
 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 int VNASSERT (int,struct vnode*,char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int v_actfreelist ;
 int v_nmntvnodes ;

__attribute__((used)) static void
delmntque(struct vnode *vp)
{
 struct mount *mp;
 int active;

 mp = vp->v_mount;
 if (mp == ((void*)0))
  return;
 MNT_ILOCK(mp);
 VI_LOCK(vp);
 KASSERT(mp->mnt_activevnodelistsize <= mp->mnt_nvnodelistsize,
     ("Active vnode list size %d > Vnode list size %d",
      mp->mnt_activevnodelistsize, mp->mnt_nvnodelistsize));
 active = vp->v_iflag & VI_ACTIVE;
 vp->v_iflag &= ~VI_ACTIVE;
 if (active) {
  mtx_lock(&mp->mnt_listmtx);
  TAILQ_REMOVE(&mp->mnt_activevnodelist, vp, v_actfreelist);
  mp->mnt_activevnodelistsize--;
  mtx_unlock(&mp->mnt_listmtx);
 }
 vp->v_mount = ((void*)0);
 VI_UNLOCK(vp);
 VNASSERT(mp->mnt_nvnodelistsize > 0, vp,
  ("bad mount point vnode list size"));
 TAILQ_REMOVE(&mp->mnt_nvnodelist, vp, v_nmntvnodes);
 mp->mnt_nvnodelistsize--;
 MNT_REL(mp);
 MNT_IUNLOCK(mp);
}
