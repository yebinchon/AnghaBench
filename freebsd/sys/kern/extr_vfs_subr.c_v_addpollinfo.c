
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct vpollinfo {TYPE_1__ vpi_selinfo; int vpi_lock; } ;
struct vnode {struct vpollinfo* v_pollinfo; } ;


 int MTX_DEF ;
 int M_WAITOK ;
 int M_ZERO ;
 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 int destroy_vpollinfo_free (struct vpollinfo*) ;
 int knlist_init (int *,struct vnode*,int ,int ,int ,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 struct vpollinfo* uma_zalloc (int ,int) ;
 int vfs_knl_assert_locked ;
 int vfs_knl_assert_unlocked ;
 int vfs_knllock ;
 int vfs_knlunlock ;
 int vnodepoll_zone ;

void
v_addpollinfo(struct vnode *vp)
{
 struct vpollinfo *vi;

 if (vp->v_pollinfo != ((void*)0))
  return;
 vi = uma_zalloc(vnodepoll_zone, M_WAITOK | M_ZERO);
 mtx_init(&vi->vpi_lock, "vnode pollinfo", ((void*)0), MTX_DEF);
 knlist_init(&vi->vpi_selinfo.si_note, vp, vfs_knllock,
     vfs_knlunlock, vfs_knl_assert_locked, vfs_knl_assert_unlocked);
 VI_LOCK(vp);
 if (vp->v_pollinfo != ((void*)0)) {
  VI_UNLOCK(vp);
  destroy_vpollinfo_free(vi);
  return;
 }
 vp->v_pollinfo = vi;
 VI_UNLOCK(vp);
}
