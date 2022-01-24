#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
struct vop_cachedlookup_args {TYPE_3__* a_cnp; struct vnode* a_dvp; struct vnode** a_vpp; } ;
struct vnode {int dummy; } ;
struct udf_node {int diroff; scalar_t__ hash_id; TYPE_1__* fentry; struct udf_mnt* udfmp; } ;
struct udf_mnt {int /*<<< orphan*/  im_mountp; } ;
struct udf_dirstream {int error; int offset; int off; } ;
struct fileid_desc {int file_char; scalar_t__ l_fi; size_t l_iu; int /*<<< orphan*/  icb; int /*<<< orphan*/ * data; int /*<<< orphan*/  tag; } ;
typedef  scalar_t__ ino_t ;
struct TYPE_6__ {scalar_t__ cn_nameiop; scalar_t__ cn_flags; int cn_lkflags; char* cn_nameptr; long cn_namelen; } ;
struct TYPE_5__ {int /*<<< orphan*/  ncs_pass2; int /*<<< orphan*/  ncs_2passes; } ;
struct TYPE_4__ {int /*<<< orphan*/  inf_len; } ;

/* Variables and functions */
 scalar_t__ CREATE ; 
 int EIO ; 
 int ENOENT ; 
 int EROFS ; 
 scalar_t__ ISDOTDOT ; 
 scalar_t__ ISLASTCN ; 
 int LK_DOWNGRADE ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int LK_TYPE_MASK ; 
 int LK_UPGRADE ; 
 scalar_t__ LOOKUP ; 
 scalar_t__ MAKEENTRY ; 
 scalar_t__ RENAME ; 
 int /*<<< orphan*/  TAGID_FID ; 
 int UDF_FILE_CHAR_DEL ; 
 int UDF_FILE_CHAR_PAR ; 
 int FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 struct udf_node* FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,struct vnode*,TYPE_3__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__ nchstats ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct udf_dirstream*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,scalar_t__,long,struct udf_mnt*) ; 
 struct fileid_desc* FUNC9 (struct udf_dirstream*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 struct udf_dirstream* FUNC11 (struct udf_node*,int,int,struct udf_mnt*) ; 
 int FUNC12 (int /*<<< orphan*/ ,scalar_t__,int,struct vnode**) ; 
 int /*<<< orphan*/  FUNC13 (struct vnode*,int) ; 
 int FUNC14 (struct vnode*,scalar_t__,int,struct vnode**) ; 

__attribute__((used)) static int
FUNC15(struct vop_cachedlookup_args *a)
{
	struct vnode *dvp;
	struct vnode *tdp = NULL;
	struct vnode **vpp = a->a_vpp;
	struct udf_node *node;
	struct udf_mnt *udfmp;
	struct fileid_desc *fid = NULL;
	struct udf_dirstream *ds;
	u_long nameiop;
	u_long flags;
	char *nameptr;
	long namelen;
	ino_t id = 0;
	int offset, error = 0;
	int fsize, lkflags, ltype, numdirpasses;

	dvp = a->a_dvp;
	node = FUNC2(dvp);
	udfmp = node->udfmp;
	nameiop = a->a_cnp->cn_nameiop;
	flags = a->a_cnp->cn_flags;
	lkflags = a->a_cnp->cn_lkflags;
	nameptr = a->a_cnp->cn_nameptr;
	namelen = a->a_cnp->cn_namelen;
	fsize = FUNC4(node->fentry->inf_len);

	/*
	 * If this is a LOOKUP and we've already partially searched through
	 * the directory, pick up where we left off and flag that the
	 * directory may need to be searched twice.  For a full description,
	 * see /sys/fs/cd9660/cd9660_lookup.c:cd9660_lookup()
	 */
	if (nameiop != LOOKUP || node->diroff == 0 || node->diroff > fsize) {
		offset = 0;
		numdirpasses = 1;
	} else {
		offset = node->diroff;
		numdirpasses = 2;
		nchstats.ncs_2passes++;
	}

lookloop:
	ds = FUNC11(node, offset, fsize, udfmp);

	while ((fid = FUNC9(ds)) != NULL) {

		/* XXX Should we return an error on a bad fid? */
		if (FUNC6(&fid->tag, TAGID_FID)) {
			FUNC5("udf_lookup: Invalid tag\n");
			error = EIO;
			break;
		}

		/* Is this a deleted file? */
		if (fid->file_char & UDF_FILE_CHAR_DEL)
			continue;

		if ((fid->l_fi == 0) && (fid->file_char & UDF_FILE_CHAR_PAR)) {
			if (flags & ISDOTDOT) {
				id = FUNC10(&fid->icb);
				break;
			}
		} else {
			if (!(FUNC8(&fid->data[fid->l_iu],
			    nameptr, fid->l_fi, namelen, udfmp))) {
				id = FUNC10(&fid->icb);
				break;
			}
		}
	}

	if (!error)
		error = ds->error;

	/* XXX Bail out here? */
	if (error) {
		FUNC7(ds);
		return (error);
	}

	/* Did we have a match? */
	if (id) {
		/*
		 * Remember where this entry was if it's the final
		 * component.
		 */
		if ((flags & ISLASTCN) && nameiop == LOOKUP)
			node->diroff = ds->offset + ds->off;
		if (numdirpasses == 2)
			nchstats.ncs_pass2++;
		FUNC7(ds);

		if (flags & ISDOTDOT) {
			error = FUNC14(dvp, id, lkflags, &tdp);
		} else if (node->hash_id == id) {
			FUNC1(dvp);	/* we want ourself, ie "." */
			/*
			 * When we lookup "." we still can be asked to lock it
			 * differently.
			 */
			ltype = lkflags & LK_TYPE_MASK;
			if (ltype != FUNC0(dvp)) {
				if (ltype == LK_EXCLUSIVE)
					FUNC13(dvp, LK_UPGRADE | LK_RETRY);
				else /* if (ltype == LK_SHARED) */
					FUNC13(dvp, LK_DOWNGRADE | LK_RETRY);
			}
			tdp = dvp;
		} else
			error = FUNC12(udfmp->im_mountp, id, lkflags, &tdp);
		if (!error) {
			*vpp = tdp;
			/* Put this entry in the cache */
			if (flags & MAKEENTRY)
				FUNC3(dvp, *vpp, a->a_cnp);
		}
	} else {
		/* Name wasn't found on this pass.  Do another pass? */
		if (numdirpasses == 2) {
			numdirpasses--;
			offset = 0;
			FUNC7(ds);
			goto lookloop;
		}
		FUNC7(ds);

		/* Enter name into cache as non-existant */
		if (flags & MAKEENTRY)
			FUNC3(dvp, *vpp, a->a_cnp);

		if ((flags & ISLASTCN) &&
		    (nameiop == CREATE || nameiop == RENAME)) {
			error = EROFS;
		} else {
			error = ENOENT;
		}
	}

	return (error);
}