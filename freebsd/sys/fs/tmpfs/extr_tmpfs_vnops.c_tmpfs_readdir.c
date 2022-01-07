
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct vop_readdir_args {int* a_eofflag; int* a_ncookies; int ** a_cookies; struct uio* a_uio; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; int v_mount; } ;
struct uio {scalar_t__ uio_resid; scalar_t__ uio_offset; } ;
struct tmpfs_node {int tn_size; } ;
struct tmpfs_mount {int dummy; } ;
struct tmpfs_dirent {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int EINVAL ;
 int EJUSTRETURN ;
 int ENOTDIR ;
 int M_TEMP ;
 int M_WAITOK ;
 scalar_t__ TMPFS_DIRCOOKIE_EOF ;
 scalar_t__ VDIR ;
 struct tmpfs_mount* VFS_TO_TMPFS (int ) ;
 struct tmpfs_node* VP_TO_TMPFS_DIR (struct vnode*) ;
 int free (int *,int ) ;
 int howmany (int ,int) ;
 int * malloc (int,int ,int ) ;
 int tmpfs_dir_getdents (struct tmpfs_mount*,struct tmpfs_node*,struct uio*,int,int *,int*) ;

__attribute__((used)) static int
tmpfs_readdir(struct vop_readdir_args *va)
{
 struct vnode *vp;
 struct uio *uio;
 struct tmpfs_mount *tm;
 struct tmpfs_node *node;
 u_long **cookies;
 int *eofflag, *ncookies;
 ssize_t startresid;
 int error, maxcookies;

 vp = va->a_vp;
 uio = va->a_uio;
 eofflag = va->a_eofflag;
 cookies = va->a_cookies;
 ncookies = va->a_ncookies;


 if (vp->v_type != VDIR)
  return ENOTDIR;

 maxcookies = 0;
 node = VP_TO_TMPFS_DIR(vp);
 tm = VFS_TO_TMPFS(vp->v_mount);

 startresid = uio->uio_resid;


 if (cookies != ((void*)0) && ncookies != ((void*)0)) {
  maxcookies = howmany(node->tn_size,
      sizeof(struct tmpfs_dirent)) + 2;
  *cookies = malloc(maxcookies * sizeof(**cookies), M_TEMP,
      M_WAITOK);
  *ncookies = 0;
 }

 if (cookies == ((void*)0))
  error = tmpfs_dir_getdents(tm, node, uio, 0, ((void*)0), ((void*)0));
 else
  error = tmpfs_dir_getdents(tm, node, uio, maxcookies, *cookies,
      ncookies);


 if (error == EJUSTRETURN)
  error = (uio->uio_resid != startresid) ? 0 : EINVAL;

 if (error != 0 && cookies != ((void*)0) && ncookies != ((void*)0)) {
  free(*cookies, M_TEMP);
  *cookies = ((void*)0);
  *ncookies = 0;
 }

 if (eofflag != ((void*)0))
  *eofflag =
      (error == 0 && uio->uio_offset == TMPFS_DIRCOOKIE_EOF);

 return error;
}
