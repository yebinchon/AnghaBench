#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vnode {int /*<<< orphan*/  v_mount; } ;
struct uio {long uio_offset; long uio_resid; int /*<<< orphan*/  uio_td; } ;
struct ucred {int dummy; } ;
struct smbnode {int n_name; int n_ino; int n_parentino; long n_dirofs; struct smbfs_fctx* n_dirseq; scalar_t__ n_parent; } ;
struct TYPE_2__ {int fa_ino; int fa_attr; } ;
struct smbfs_fctx {long f_nmlen; TYPE_1__ f_attr; int /*<<< orphan*/  f_name; } ;
struct smb_cred {int dummy; } ;
struct dirent {long d_reclen; int d_fileno; long d_namlen; char* d_name; void* d_type; } ;
struct componentname {char* cn_nameptr; long cn_namelen; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 long DE_SIZE ; 
 void* DT_DIR ; 
 void* DT_REG ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int SMB_FA_DIR ; 
 int SMB_FA_HIDDEN ; 
 int SMB_FA_SYSTEM ; 
 struct smbnode* FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*,struct vnode*,struct componentname*) ; 
 int /*<<< orphan*/  FUNC5 (struct dirent*) ; 
 int /*<<< orphan*/  FUNC6 (struct smb_cred*,int /*<<< orphan*/ ,struct ucred*) ; 
 scalar_t__ smbfs_fastlookup ; 
 int /*<<< orphan*/  FUNC7 (struct smbfs_fctx*,struct smb_cred*) ; 
 int FUNC8 (struct smbfs_fctx*,long,struct smb_cred*) ; 
 int FUNC9 (struct smbnode*,char*,int,int,struct smb_cred*,struct smbfs_fctx**) ; 
 int /*<<< orphan*/  FUNC10 (struct smb_cred*) ; 
 struct smb_cred* FUNC11 () ; 
 int FUNC12 (int /*<<< orphan*/ ,struct vnode*,int /*<<< orphan*/ ,long,TYPE_1__*,struct vnode**) ; 
 int FUNC13 (struct dirent*,long,struct uio*) ; 
 int /*<<< orphan*/  FUNC14 (struct vnode*) ; 

__attribute__((used)) static int
FUNC15(struct vnode *vp, struct uio *uio, struct ucred *cred)
{
	struct dirent de;
	struct componentname cn;
	struct smb_cred *scred;
	struct smbfs_fctx *ctx;
	struct vnode *newvp;
	struct smbnode *np = FUNC1(vp);
	int error/*, *eofflag = ap->a_eofflag*/;
	long offset, limit;

	np = FUNC1(vp);
	FUNC0("dirname='%s'\n", np->n_name);
	scred = FUNC11();
	FUNC6(scred, uio->uio_td, cred);
	offset = uio->uio_offset / DE_SIZE;	/* offset in the directory */
	limit = uio->uio_resid / DE_SIZE;
	if (uio->uio_resid < DE_SIZE || uio->uio_offset < 0) {
		error = EINVAL;
		goto out;
	}
	while (limit && offset < 2) {
		limit--;
		FUNC3((caddr_t)&de, DE_SIZE);
		de.d_reclen = DE_SIZE;
		de.d_fileno = (offset == 0) ? np->n_ino :
		    (np->n_parent ? np->n_parentino : 2);
		if (de.d_fileno == 0)
			de.d_fileno = 0x7ffffffd + offset;
		de.d_namlen = offset + 1;
		de.d_name[0] = '.';
		de.d_name[1] = '.';
		de.d_type = DT_DIR;
		FUNC5(&de);
		error = FUNC13(&de, DE_SIZE, uio);
		if (error)
			goto out;
		offset++;
		uio->uio_offset += DE_SIZE;
	}
	if (limit == 0) {
		error = 0;
		goto out;
	}
	if (offset != np->n_dirofs || np->n_dirseq == NULL) {
		FUNC0("Reopening search %ld:%ld\n", offset, np->n_dirofs);
		if (np->n_dirseq) {
			FUNC7(np->n_dirseq, scred);
			np->n_dirseq = NULL;
		}
		np->n_dirofs = 2;
		error = FUNC9(np, "*", 1,
		    SMB_FA_SYSTEM | SMB_FA_HIDDEN | SMB_FA_DIR,
		    scred, &ctx);
		if (error) {
			FUNC0("can not open search, error = %d", error);
			goto out;
		}
		np->n_dirseq = ctx;
	} else
		ctx = np->n_dirseq;
	while (np->n_dirofs < offset) {
		error = FUNC8(ctx, offset - np->n_dirofs++, scred);
		if (error) {
			FUNC7(np->n_dirseq, scred);
			np->n_dirseq = NULL;
			error = ENOENT ? 0 : error;
			goto out;
		}
	}
	error = 0;
	for (; limit; limit--, offset++) {
		error = FUNC8(ctx, limit, scred);
		if (error)
			break;
		np->n_dirofs++;
		FUNC3((caddr_t)&de, DE_SIZE);
		de.d_reclen = DE_SIZE;
		de.d_fileno = ctx->f_attr.fa_ino;
		de.d_type = (ctx->f_attr.fa_attr & SMB_FA_DIR) ? DT_DIR : DT_REG;
		de.d_namlen = ctx->f_nmlen;
		FUNC2(ctx->f_name, de.d_name, de.d_namlen);
		FUNC5(&de);
		if (smbfs_fastlookup) {
			error = FUNC12(vp->v_mount, vp, ctx->f_name,
			    ctx->f_nmlen, &ctx->f_attr, &newvp);
			if (!error) {
				cn.cn_nameptr = de.d_name;
				cn.cn_namelen = de.d_namlen;
				FUNC4(vp, newvp, &cn);
				FUNC14(newvp);
			}
		}
		error = FUNC13(&de, DE_SIZE, uio);
		if (error)
			break;
	}
	if (error == ENOENT)
		error = 0;
	uio->uio_offset = offset * DE_SIZE;
out:
	FUNC10(scred);
	return error;
}