#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vop_getattr_args {struct vattr* a_vap; struct vnode* a_vp; } ;
struct vnode {TYPE_3__* v_mount; int /*<<< orphan*/  v_type; struct pfs_vdata* v_data; } ;
struct vattr {int va_nlink; int va_mode; scalar_t__ va_gid; scalar_t__ va_uid; int /*<<< orphan*/  va_ctime; int /*<<< orphan*/  va_mtime; int /*<<< orphan*/  va_atime; int /*<<< orphan*/  va_fsid; scalar_t__ va_filerev; scalar_t__ va_size; scalar_t__ va_bytes; int /*<<< orphan*/  va_blocksize; scalar_t__ va_flags; int /*<<< orphan*/  va_fileid; int /*<<< orphan*/  va_type; } ;
struct proc {TYPE_4__* p_ucred; } ;
struct pfs_vdata {int /*<<< orphan*/  pvd_pid; struct pfs_node* pvd_pn; } ;
struct pfs_node {int pn_type; int /*<<< orphan*/ * pn_attr; int /*<<< orphan*/  pn_name; } ;
struct TYPE_8__ {scalar_t__ cr_rgid; scalar_t__ cr_ruid; } ;
struct TYPE_5__ {int /*<<< orphan*/ * val; } ;
struct TYPE_6__ {TYPE_1__ f_fsid; } ;
struct TYPE_7__ {TYPE_2__ mnt_stat; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pfs_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct pfs_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct pfs_node*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct pfs_node*,int /*<<< orphan*/ ,struct proc**) ; 
#define  pfstype_dir 132 
#define  pfstype_file 131 
#define  pfstype_procdir 130 
#define  pfstype_root 129 
#define  pfstype_symlink 128 
 int FUNC8 (int /*<<< orphan*/ ,struct proc*,struct pfs_node*,struct vattr*) ; 
 int /*<<< orphan*/  FUNC9 (struct pfs_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static int
FUNC11(struct vop_getattr_args *va)
{
	struct vnode *vn = va->a_vp;
	struct pfs_vdata *pvd = vn->v_data;
	struct pfs_node *pn = pvd->pvd_pn;
	struct vattr *vap = va->a_vap;
	struct proc *proc;
	int error = 0;

	FUNC1(("%s", pn->pn_name));
	FUNC4(pn);

	if (!FUNC7(curthread, pn, pvd->pvd_pid, &proc))
		FUNC0 (ENOENT);

	vap->va_type = vn->v_type;
	vap->va_fileid = FUNC9(pn, pvd->pvd_pid);
	vap->va_flags = 0;
	vap->va_blocksize = PAGE_SIZE;
	vap->va_bytes = vap->va_size = 0;
	vap->va_filerev = 0;
	vap->va_fsid = vn->v_mount->mnt_stat.f_fsid.val[0];
	vap->va_nlink = 1;
	FUNC3(&vap->va_ctime);
	vap->va_atime = vap->va_mtime = vap->va_ctime;

	switch (pn->pn_type) {
	case pfstype_procdir:
	case pfstype_root:
	case pfstype_dir:
#if 0
		pfs_lock(pn);
		/* compute link count */
		pfs_unlock(pn);
#endif
		vap->va_mode = 0555;
		break;
	case pfstype_file:
	case pfstype_symlink:
		vap->va_mode = 0444;
		break;
	default:
		FUNC10("shouldn't be here!\n");
		vap->va_mode = 0;
		break;
	}

	if (proc != NULL) {
		vap->va_uid = proc->p_ucred->cr_ruid;
		vap->va_gid = proc->p_ucred->cr_rgid;
	} else {
		vap->va_uid = 0;
		vap->va_gid = 0;
	}

	if (pn->pn_attr != NULL)
		error = FUNC8(curthread, proc, pn, vap);

	if(proc != NULL)
		FUNC2(proc);

	FUNC0 (error);
}