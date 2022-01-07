
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {scalar_t__ v_type; scalar_t__ v_mount; } ;
struct ucred {int dummy; } ;
struct dirtemplate {int dotdot_type; int dotdot_namlen; char* dotdot_name; int dotdot_ino; } ;
typedef int off_t ;
typedef int ino_t ;
typedef int caddr_t ;
struct TYPE_2__ {int i_number; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int ENOTDIR ;
 int IO_NODELOCKED ;
 int IO_NOMACCHECK ;
 int KASSERT (int,char*) ;
 int NOCRED ;
 scalar_t__ OFSFMT (struct vnode*) ;
 int UIO_READ ;
 int UIO_SYSSPACE ;
 scalar_t__ VDIR ;
 TYPE_1__* VTOI (struct vnode*) ;
 struct vnode* vn_dir_dd_ino (struct vnode*) ;
 int vn_rdwr (int ,struct vnode*,int ,int,int ,int ,int,struct ucred*,int ,int *,int *) ;

__attribute__((used)) static int
ufs_dir_dd_ino(struct vnode *vp, struct ucred *cred, ino_t *dd_ino,
    struct vnode **dd_vp)
{
 struct dirtemplate dirbuf;
 struct vnode *ddvp;
 int error, namlen;

 ASSERT_VOP_LOCKED(vp, "ufs_dir_dd_ino");
 *dd_vp = ((void*)0);
 if (vp->v_type != VDIR)
  return (ENOTDIR);



 if ((ddvp = vn_dir_dd_ino(vp)) != ((void*)0)) {
  KASSERT(ddvp->v_mount == vp->v_mount,
      ("ufs_dir_dd_ino: Unexpected mount point crossing"));
  *dd_ino = VTOI(ddvp)->i_number;
  *dd_vp = ddvp;
  return (0);
 }



 error = vn_rdwr(UIO_READ, vp, (caddr_t)&dirbuf,
     sizeof (struct dirtemplate), (off_t)0, UIO_SYSSPACE,
     IO_NODELOCKED | IO_NOMACCHECK, cred, NOCRED, ((void*)0), ((void*)0));
 if (error != 0)
  return (error);

 if (OFSFMT(vp))
  namlen = dirbuf.dotdot_type;
 else
  namlen = dirbuf.dotdot_namlen;



 if (namlen != 2 || dirbuf.dotdot_name[0] != '.' ||
     dirbuf.dotdot_name[1] != '.')
  return (ENOTDIR);
 *dd_ino = dirbuf.dotdot_ino;
 return (0);
}
