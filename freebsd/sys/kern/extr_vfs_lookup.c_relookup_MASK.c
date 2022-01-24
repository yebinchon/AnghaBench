#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vnode {scalar_t__ v_type; } ;
struct componentname {int cn_flags; int cn_lkflags; char* cn_nameptr; scalar_t__ cn_nameiop; } ;

/* Variables and functions */
 scalar_t__ DELETE ; 
 int EJUSTRETURN ; 
 int EROFS ; 
 int FOLLOW ; 
 int ISDOTDOT ; 
 int ISLASTCN ; 
 int ISSYMLINK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int LOCKLEAF ; 
 int LOCKPARENT ; 
 scalar_t__ LOOKUP ; 
 int RDONLY ; 
 scalar_t__ RENAME ; 
 int SAVESTART ; 
 scalar_t__ VDIR ; 
 scalar_t__ VLNK ; 
 int FUNC1 (struct vnode*,struct vnode**,struct componentname*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 
 int WANTPARENT ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC9 (struct vnode*) ; 

int
FUNC10(struct vnode *dvp, struct vnode **vpp, struct componentname *cnp)
{
	struct vnode *dp = NULL;		/* the directory we are searching */
	int wantparent;			/* 1 => wantparent or lockparent flag */
	int rdonly;			/* lookup read-only flag bit */
	int error = 0;

	FUNC0(cnp->cn_flags & ISLASTCN,
	    ("relookup: Not given last component."));
	/*
	 * Setup: break out flag bits into variables.
	 */
	wantparent = cnp->cn_flags & (LOCKPARENT|WANTPARENT);
	FUNC0(wantparent, ("relookup: parent not wanted."));
	rdonly = cnp->cn_flags & RDONLY;
	cnp->cn_flags &= ~ISSYMLINK;
	dp = dvp;
	cnp->cn_lkflags = LK_EXCLUSIVE;
	FUNC6(dp, LK_EXCLUSIVE | LK_RETRY);

	/*
	 * Search a new directory.
	 *
	 * The last component of the filename is left accessible via
	 * cnp->cn_nameptr for callers that need the name. Callers needing
	 * the name set the SAVENAME flag. When done, they assume
	 * responsibility for freeing the pathname buffer.
	 */
#ifdef NAMEI_DIAGNOSTIC
	printf("{%s}: ", cnp->cn_nameptr);
#endif

	/*
	 * Check for "" which represents the root directory after slash
	 * removal.
	 */
	if (cnp->cn_nameptr[0] == '\0') {
		/*
		 * Support only LOOKUP for "/" because lookup()
		 * can't succeed for CREATE, DELETE and RENAME.
		 */
		FUNC0(cnp->cn_nameiop == LOOKUP, ("nameiop must be LOOKUP"));
		FUNC0(dp->v_type == VDIR, ("dp is not a directory"));

		if (!(cnp->cn_flags & LOCKLEAF))
			FUNC2(dp, 0);
		*vpp = dp;
		/* XXX This should probably move to the top of function. */
		if (cnp->cn_flags & SAVESTART)
			FUNC4("lookup: SAVESTART");
		return (0);
	}

	if (cnp->cn_flags & ISDOTDOT)
		FUNC4 ("relookup: lookup on dot-dot");

	/*
	 * We now have a segment name to search for, and a directory to search.
	 */
#ifdef NAMEI_DIAGNOSTIC
	vn_printf(dp, "search in ");
#endif
	if ((error = FUNC1(dp, vpp, cnp)) != 0) {
		FUNC0(*vpp == NULL, ("leaf should be empty"));
		if (error != EJUSTRETURN)
			goto bad;
		/*
		 * If creating and at end of pathname, then can consider
		 * allowing file to be created.
		 */
		if (rdonly) {
			error = EROFS;
			goto bad;
		}
		/* ASSERT(dvp == ndp->ni_startdir) */
		if (cnp->cn_flags & SAVESTART)
			FUNC3(dvp);
		if ((cnp->cn_flags & LOCKPARENT) == 0)
			FUNC2(dp, 0);
		/*
		 * We return with ni_vp NULL to indicate that the entry
		 * doesn't currently exist, leaving a pointer to the
		 * (possibly locked) directory vnode in ndp->ni_dvp.
		 */
		return (0);
	}

	dp = *vpp;

	/*
	 * Disallow directory write attempts on read-only filesystems.
	 */
	if (rdonly &&
	    (cnp->cn_nameiop == DELETE || cnp->cn_nameiop == RENAME)) {
		if (dvp == dp)
			FUNC9(dvp);
		else
			FUNC8(dvp);
		error = EROFS;
		goto bad;
	}
	/*
	 * Set the parent lock/ref state to the requested state.
	 */
	if ((cnp->cn_flags & LOCKPARENT) == 0 && dvp != dp) {
		if (wantparent)
			FUNC2(dvp, 0);
		else
			FUNC8(dvp);
	} else if (!wantparent)
		FUNC9(dvp);
	/*
	 * Check for symbolic link
	 */
	FUNC0(dp->v_type != VLNK || !(cnp->cn_flags & FOLLOW),
	    ("relookup: symlink found.\n"));

	/* ASSERT(dvp == ndp->ni_startdir) */
	if (cnp->cn_flags & SAVESTART)
		FUNC3(dvp);
	
	if ((cnp->cn_flags & LOCKLEAF) == 0)
		FUNC2(dp, 0);
	return (0);
bad:
	FUNC8(dp);
	*vpp = NULL;
	return (error);
}