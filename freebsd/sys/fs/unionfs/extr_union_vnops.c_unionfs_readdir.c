
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct vop_readdir_args {int* a_eofflag; int* a_ncookies; int ** a_cookies; int a_cred; struct vnode* a_vp; struct uio* a_uio; } ;
struct vnode {scalar_t__ v_type; } ;
struct vattr {int va_flags; } ;
struct unionfs_node_status {scalar_t__ uns_upper_opencnt; scalar_t__ uns_lower_opencnt; int uns_readdir_status; } ;
struct unionfs_node {struct vnode* un_lowervp; struct vnode* un_uppervp; } ;
struct uio {int uio_offset; int uio_resid; struct thread* uio_td; } ;
struct thread {int dummy; } ;


 int DEV_BSIZE ;
 int EBADF ;
 int ENOTDIR ;
 int KASSERT (int,char*) ;
 int KASSERT_UNIONFS_VNODE (struct vnode*) ;
 int LK_DOWNGRADE ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int LK_UPGRADE ;
 int M_TEMP ;
 int M_WAITOK ;
 struct vnode* NULLVP ;
 int OPAQUE ;
 int UNIONFS_INTERNAL_DEBUG (char*,...) ;
 scalar_t__ VDIR ;
 int VOP_GETATTR (struct vnode*,struct vattr*,int ) ;
 int VOP_ISLOCKED (struct vnode*) ;
 int VOP_READDIR (struct vnode*,struct uio*,int ,int*,int*,int **) ;
 struct unionfs_node* VTOUNIONFS (struct vnode*) ;
 int free (int *,int ) ;
 scalar_t__ malloc (int,int ,int ) ;
 int memcpy (int *,int *,int) ;
 int unionfs_get_node_status (struct unionfs_node*,struct thread*,struct unionfs_node_status**) ;
 int unionfs_tryrem_node_status (struct unionfs_node*,struct unionfs_node_status*) ;
 scalar_t__ vn_lock (struct vnode*,int) ;

__attribute__((used)) static int
unionfs_readdir(struct vop_readdir_args *ap)
{
 int error;
 int eofflag;
 int locked;
 int uio_offset_bk;
 struct unionfs_node *unp;
 struct unionfs_node_status *unsp;
 struct uio *uio;
 struct vnode *vp;
 struct vnode *uvp;
 struct vnode *lvp;
 struct thread *td;
 struct vattr va;

 int ncookies_bk;
 u_long *cookies_bk;

 UNIONFS_INTERNAL_DEBUG("unionfs_readdir: enter\n");

 KASSERT_UNIONFS_VNODE(ap->a_vp);

 error = 0;
 eofflag = 0;
 locked = 0;
 uio_offset_bk = 0;
 uio = ap->a_uio;
 uvp = NULLVP;
 lvp = NULLVP;
 td = uio->uio_td;
 ncookies_bk = 0;
 cookies_bk = ((void*)0);

 vp = ap->a_vp;
 if (vp->v_type != VDIR)
  return (ENOTDIR);


 if (VOP_ISLOCKED(vp) != LK_EXCLUSIVE) {
  if (vn_lock(vp, LK_UPGRADE) != 0)
   vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);
  locked = 1;
 }
 unp = VTOUNIONFS(vp);
 if (unp == ((void*)0))
  error = EBADF;
 else {
  uvp = unp->un_uppervp;
  lvp = unp->un_lowervp;
  unionfs_get_node_status(unp, td, &unsp);
  if ((uvp != NULLVP && unsp->uns_upper_opencnt <= 0) ||
   (lvp != NULLVP && unsp->uns_lower_opencnt <= 0)) {
   unionfs_tryrem_node_status(unp, unsp);
   error = EBADF;
  }
 }
 if (locked)
  vn_lock(vp, LK_DOWNGRADE | LK_RETRY);
 if (error != 0)
  goto unionfs_readdir_exit;


 if (uvp != NULLVP && lvp != NULLVP) {
  if ((error = VOP_GETATTR(uvp, &va, ap->a_cred)) != 0)
   goto unionfs_readdir_exit;
  if (va.va_flags & OPAQUE)
   lvp = NULLVP;
 }


 if (uvp != NULLVP && lvp == NULLVP) {
  error = VOP_READDIR(uvp, uio, ap->a_cred, ap->a_eofflag,
      ap->a_ncookies, ap->a_cookies);
  unsp->uns_readdir_status = 0;

  goto unionfs_readdir_exit;
 }


 if (uvp == NULLVP && lvp != NULLVP) {
  error = VOP_READDIR(lvp, uio, ap->a_cred, ap->a_eofflag,
      ap->a_ncookies, ap->a_cookies);
  unsp->uns_readdir_status = 2;

  goto unionfs_readdir_exit;
 }




 KASSERT(uvp != NULLVP, ("unionfs_readdir: null upper vp"));
 KASSERT(lvp != NULLVP, ("unionfs_readdir: null lower vp"));
 if (uio->uio_offset == 0)
  unsp->uns_readdir_status = 0;

 if (unsp->uns_readdir_status == 0) {

  error = VOP_READDIR(uvp, uio, ap->a_cred, &eofflag,
        ap->a_ncookies, ap->a_cookies);

  if (error != 0 || eofflag == 0)
   goto unionfs_readdir_exit;
  unsp->uns_readdir_status = 1;







  if (uio->uio_resid <= (uio->uio_resid & (DEV_BSIZE -1)))
   goto unionfs_readdir_exit;





  if (ap->a_ncookies != ((void*)0)) {
   ncookies_bk = *(ap->a_ncookies);
   *(ap->a_ncookies) = 0;
  }
  if (ap->a_cookies != ((void*)0)) {
   cookies_bk = *(ap->a_cookies);
   *(ap->a_cookies) = ((void*)0);
  }
 }


 if (unsp->uns_readdir_status == 1) {
  unsp->uns_readdir_status = 2;




  uio_offset_bk = uio->uio_offset;
  uio->uio_offset = 0;
 }

 if (lvp == NULLVP) {
  error = EBADF;
  goto unionfs_readdir_exit;
 }

 error = VOP_READDIR(lvp, uio, ap->a_cred, ap->a_eofflag,
       ap->a_ncookies, ap->a_cookies);
 if (uio->uio_offset == 0)
  uio->uio_offset = uio_offset_bk;

 if (cookies_bk != ((void*)0)) {

  int size;
  u_long *newcookies, *pos;

  size = *(ap->a_ncookies) + ncookies_bk;
  newcookies = (u_long *) malloc(size * sizeof(u_long),
      M_TEMP, M_WAITOK);
  pos = newcookies;

  memcpy(pos, cookies_bk, ncookies_bk * sizeof(u_long));
  pos += ncookies_bk;
  memcpy(pos, *(ap->a_cookies), *(ap->a_ncookies) * sizeof(u_long));
  free(cookies_bk, M_TEMP);
  free(*(ap->a_cookies), M_TEMP);
  *(ap->a_ncookies) = size;
  *(ap->a_cookies) = newcookies;
 }

unionfs_readdir_exit:
 if (error != 0 && ap->a_eofflag != ((void*)0))
  *(ap->a_eofflag) = 1;

 UNIONFS_INTERNAL_DEBUG("unionfs_readdir: leave (%d)\n", error);

 return (error);
}
