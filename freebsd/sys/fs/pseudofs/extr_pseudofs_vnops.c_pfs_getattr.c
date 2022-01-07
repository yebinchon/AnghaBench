
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vop_getattr_args {struct vattr* a_vap; struct vnode* a_vp; } ;
struct vnode {TYPE_3__* v_mount; int v_type; struct pfs_vdata* v_data; } ;
struct vattr {int va_nlink; int va_mode; scalar_t__ va_gid; scalar_t__ va_uid; int va_ctime; int va_mtime; int va_atime; int va_fsid; scalar_t__ va_filerev; scalar_t__ va_size; scalar_t__ va_bytes; int va_blocksize; scalar_t__ va_flags; int va_fileid; int va_type; } ;
struct proc {TYPE_4__* p_ucred; } ;
struct pfs_vdata {int pvd_pid; struct pfs_node* pvd_pn; } ;
struct pfs_node {int pn_type; int * pn_attr; int pn_name; } ;
struct TYPE_8__ {scalar_t__ cr_rgid; scalar_t__ cr_ruid; } ;
struct TYPE_5__ {int * val; } ;
struct TYPE_6__ {TYPE_1__ f_fsid; } ;
struct TYPE_7__ {TYPE_2__ mnt_stat; } ;


 int ENOENT ;
 int PAGE_SIZE ;
 int PFS_RETURN (int) ;
 int PFS_TRACE (char*) ;
 int PROC_UNLOCK (struct proc*) ;
 int curthread ;
 int nanotime (int *) ;
 int pfs_assert_not_owned (struct pfs_node*) ;
 int pfs_lock (struct pfs_node*) ;
 int pfs_unlock (struct pfs_node*) ;
 int pfs_visible (int ,struct pfs_node*,int ,struct proc**) ;





 int pn_attr (int ,struct proc*,struct pfs_node*,struct vattr*) ;
 int pn_fileno (struct pfs_node*,int ) ;
 int printf (char*) ;

__attribute__((used)) static int
pfs_getattr(struct vop_getattr_args *va)
{
 struct vnode *vn = va->a_vp;
 struct pfs_vdata *pvd = vn->v_data;
 struct pfs_node *pn = pvd->pvd_pn;
 struct vattr *vap = va->a_vap;
 struct proc *proc;
 int error = 0;

 PFS_TRACE(("%s", pn->pn_name));
 pfs_assert_not_owned(pn);

 if (!pfs_visible(curthread, pn, pvd->pvd_pid, &proc))
  PFS_RETURN (ENOENT);

 vap->va_type = vn->v_type;
 vap->va_fileid = pn_fileno(pn, pvd->pvd_pid);
 vap->va_flags = 0;
 vap->va_blocksize = PAGE_SIZE;
 vap->va_bytes = vap->va_size = 0;
 vap->va_filerev = 0;
 vap->va_fsid = vn->v_mount->mnt_stat.f_fsid.val[0];
 vap->va_nlink = 1;
 nanotime(&vap->va_ctime);
 vap->va_atime = vap->va_mtime = vap->va_ctime;

 switch (pn->pn_type) {
 case 130:
 case 129:
 case 132:





  vap->va_mode = 0555;
  break;
 case 131:
 case 128:
  vap->va_mode = 0444;
  break;
 default:
  printf("shouldn't be here!\n");
  vap->va_mode = 0;
  break;
 }

 if (proc != ((void*)0)) {
  vap->va_uid = proc->p_ucred->cr_ruid;
  vap->va_gid = proc->p_ucred->cr_rgid;
 } else {
  vap->va_uid = 0;
  vap->va_gid = 0;
 }

 if (pn->pn_attr != ((void*)0))
  error = pn_attr(curthread, proc, pn, vap);

 if(proc != ((void*)0))
  PROC_UNLOCK(proc);

 PFS_RETURN (error);
}
