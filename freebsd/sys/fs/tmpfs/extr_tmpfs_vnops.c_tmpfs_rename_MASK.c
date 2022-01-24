#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vop_rename_args {struct componentname* a_tcnp; struct vnode* a_tvp; struct vnode* a_tdvp; struct componentname* a_fcnp; struct vnode* a_fvp; struct vnode* a_fdvp; } ;
struct vnode {struct mount* v_mount; } ;
struct TYPE_3__ {struct tmpfs_node* tn_parent; } ;
struct tmpfs_node {int tn_flags; scalar_t__ tn_type; scalar_t__ tn_size; int /*<<< orphan*/  tn_status; int /*<<< orphan*/  tn_links; TYPE_1__ tn_dir; } ;
struct tmpfs_mount {int dummy; } ;
struct TYPE_4__ {char* td_name; } ;
struct tmpfs_dirent {TYPE_2__ ud; struct tmpfs_node* td_node; } ;
struct mount {int dummy; } ;
struct componentname {int cn_flags; int cn_namelen; char* cn_nameptr; } ;

/* Variables and functions */
 int APPEND ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int DOWHITEOUT ; 
 int EINVAL ; 
 int EISDIR ; 
 int ENOENT ; 
 int ENOTDIR ; 
 int ENOTEMPTY ; 
 int EPERM ; 
 int EXDEV ; 
 int HASBUF ; 
 int IMMUTABLE ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int ISDOTDOT ; 
 int ISWHITEOUT ; 
 int LK_EXCLUSIVE ; 
 int LK_NOWAIT ; 
 int MAXNAMLEN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  M_TMPFSNAME ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int NOUNLINK ; 
 int /*<<< orphan*/  FUNC3 (struct tmpfs_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct tmpfs_mount*) ; 
 int /*<<< orphan*/  TMPFS_NODE_CHANGED ; 
 int /*<<< orphan*/  FUNC5 (struct tmpfs_node*) ; 
 int /*<<< orphan*/  TMPFS_NODE_MODIFIED ; 
 int /*<<< orphan*/  FUNC6 (struct tmpfs_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct tmpfs_mount*) ; 
 int /*<<< orphan*/  FUNC8 (struct tmpfs_node*) ; 
 scalar_t__ VDIR ; 
 struct tmpfs_mount* FUNC9 (struct mount*) ; 
 int FUNC10 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*,int /*<<< orphan*/ ) ; 
 struct tmpfs_node* FUNC12 (struct vnode*) ; 
 struct tmpfs_node* FUNC13 (struct vnode*) ; 
 scalar_t__ FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC16 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC18 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct vnode*,struct tmpfs_dirent*) ; 
 int /*<<< orphan*/  FUNC20 (struct vnode*,struct tmpfs_dirent*) ; 
 struct tmpfs_dirent* FUNC21 (struct tmpfs_node*,struct tmpfs_node*,struct componentname*) ; 
 int /*<<< orphan*/  FUNC22 (struct vnode*,struct componentname*) ; 
 int /*<<< orphan*/  FUNC23 (struct vnode*,struct componentname*) ; 
 int /*<<< orphan*/  FUNC24 (struct tmpfs_dirent*,char*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct tmpfs_mount*,struct tmpfs_dirent*) ; 
 int FUNC26 (struct vnode*,struct vnode**,struct vnode*,struct vnode**,struct componentname*,struct componentname*) ; 
 scalar_t__ FUNC27 (struct vnode*) ; 
 int FUNC28 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct mount*) ; 
 scalar_t__ FUNC30 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC31 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC32 (struct vnode*) ; 

__attribute__((used)) static int
FUNC33(struct vop_rename_args *v)
{
	struct vnode *fdvp = v->a_fdvp;
	struct vnode *fvp = v->a_fvp;
	struct componentname *fcnp = v->a_fcnp;
	struct vnode *tdvp = v->a_tdvp;
	struct vnode *tvp = v->a_tvp;
	struct componentname *tcnp = v->a_tcnp;
	struct mount *mp = NULL;
	char *newname;
	struct tmpfs_dirent *de;
	struct tmpfs_mount *tmp;
	struct tmpfs_node *fdnode;
	struct tmpfs_node *fnode;
	struct tmpfs_node *tnode;
	struct tmpfs_node *tdnode;
	int error;

	FUNC2(FUNC10(tdvp));
	FUNC2(FUNC1(tvp != NULL, FUNC10(tvp)));
	FUNC2(fcnp->cn_flags & HASBUF);
	FUNC2(tcnp->cn_flags & HASBUF);

	/*
	 * Disallow cross-device renames.
	 * XXX Why isn't this done by the caller?
	 */
	if (fvp->v_mount != tdvp->v_mount ||
	    (tvp != NULL && fvp->v_mount != tvp->v_mount)) {
		error = EXDEV;
		goto out;
	}

	/* If source and target are the same file, there is nothing to do. */
	if (fvp == tvp) {
		error = 0;
		goto out;
	}

	/*
	 * If we need to move the directory between entries, lock the
	 * source so that we can safely operate on it.
	 */
	if (fdvp != tdvp && fdvp != tvp) {
		if (FUNC30(fdvp, LK_EXCLUSIVE | LK_NOWAIT) != 0) {
			mp = tdvp->v_mount;
			error = FUNC28(mp, 0);
			if (error != 0) {
				mp = NULL;
				goto out;
			}
			error = FUNC26(fdvp, &fvp, tdvp, &tvp,
			    fcnp, tcnp);
			if (error != 0) {
				FUNC29(mp);
				return (error);
			}
			FUNC0(fdvp,
			    "tmpfs_rename: fdvp not locked");
			FUNC0(tdvp,
			    "tmpfs_rename: tdvp not locked");
			if (tvp != NULL)
				FUNC0(tvp,
				    "tmpfs_rename: tvp not locked");
			if (fvp == tvp) {
				error = 0;
				goto out_locked;
			}
		}
	}

	tmp = FUNC9(tdvp->v_mount);
	tdnode = FUNC12(tdvp);
	tnode = (tvp == NULL) ? NULL : FUNC13(tvp);
	fdnode = FUNC12(fdvp);
	fnode = FUNC13(fvp);
	de = FUNC21(fdnode, fnode, fcnp);

	/*
	 * Entry can disappear before we lock fdvp,
	 * also avoid manipulating '.' and '..' entries.
	 */
	if (de == NULL) {
		if ((fcnp->cn_flags & ISDOTDOT) != 0 ||
		    (fcnp->cn_namelen == 1 && fcnp->cn_nameptr[0] == '.'))
			error = EINVAL;
		else
			error = ENOENT;
		goto out_locked;
	}
	FUNC2(de->td_node == fnode);

	/*
	 * If re-naming a directory to another preexisting directory
	 * ensure that the target directory is empty so that its
	 * removal causes no side effects.
	 * Kern_rename guarantees the destination to be a directory
	 * if the source is one.
	 */
	if (tvp != NULL) {
		FUNC2(tnode != NULL);

		if ((tnode->tn_flags & (NOUNLINK | IMMUTABLE | APPEND)) ||
		    (tdnode->tn_flags & (APPEND | IMMUTABLE))) {
			error = EPERM;
			goto out_locked;
		}

		if (fnode->tn_type == VDIR && tnode->tn_type == VDIR) {
			if (tnode->tn_size > 0) {
				error = ENOTEMPTY;
				goto out_locked;
			}
		} else if (fnode->tn_type == VDIR && tnode->tn_type != VDIR) {
			error = ENOTDIR;
			goto out_locked;
		} else if (fnode->tn_type != VDIR && tnode->tn_type == VDIR) {
			error = EISDIR;
			goto out_locked;
		} else {
			FUNC2(fnode->tn_type != VDIR &&
				tnode->tn_type != VDIR);
		}
	}

	if ((fnode->tn_flags & (NOUNLINK | IMMUTABLE | APPEND))
	    || (fdnode->tn_flags & (APPEND | IMMUTABLE))) {
		error = EPERM;
		goto out_locked;
	}

	/*
	 * Ensure that we have enough memory to hold the new name, if it
	 * has to be changed.
	 */
	if (fcnp->cn_namelen != tcnp->cn_namelen ||
	    FUNC14(fcnp->cn_nameptr, tcnp->cn_nameptr, fcnp->cn_namelen) != 0) {
		newname = FUNC18(tcnp->cn_namelen, M_TMPFSNAME, M_WAITOK);
	} else
		newname = NULL;

	/*
	 * If the node is being moved to another directory, we have to do
	 * the move.
	 */
	if (fdnode != tdnode) {
		/*
		 * In case we are moving a directory, we have to adjust its
		 * parent to point to the new parent.
		 */
		if (de->td_node->tn_type == VDIR) {
			struct tmpfs_node *n;

			/*
			 * Ensure the target directory is not a child of the
			 * directory being moved.  Otherwise, we'd end up
			 * with stale nodes.
			 */
			n = tdnode;
			/*
			 * TMPFS_LOCK guaranties that no nodes are freed while
			 * traversing the list. Nodes can only be marked as
			 * removed: tn_parent == NULL.
			 */
			FUNC4(tmp);
			FUNC5(n);
			while (n != n->tn_dir.tn_parent) {
				struct tmpfs_node *parent;

				if (n == fnode) {
					FUNC6(n);
					FUNC7(tmp);
					error = EINVAL;
					if (newname != NULL)
						    FUNC17(newname, M_TMPFSNAME);
					goto out_locked;
				}
				parent = n->tn_dir.tn_parent;
				FUNC6(n);
				if (parent == NULL) {
					n = NULL;
					break;
				}
				FUNC5(parent);
				if (parent->tn_dir.tn_parent == NULL) {
					FUNC6(parent);
					n = NULL;
					break;
				}
				n = parent;
			}
			FUNC7(tmp);
			if (n == NULL) {
				error = EINVAL;
				if (newname != NULL)
					    FUNC17(newname, M_TMPFSNAME);
				goto out_locked;
			}
			FUNC6(n);

			/* Adjust the parent pointer. */
			FUNC8(fnode);
			FUNC5(de->td_node);
			de->td_node->tn_dir.tn_parent = tdnode;
			FUNC6(de->td_node);

			/*
			 * As a result of changing the target of the '..'
			 * entry, the link count of the source and target
			 * directories has to be adjusted.
			 */
			FUNC5(tdnode);
			FUNC3(tdnode);
			tdnode->tn_links++;
			FUNC6(tdnode);

			FUNC5(fdnode);
			FUNC3(fdnode);
			fdnode->tn_links--;
			FUNC6(fdnode);
		}
	}

	/*
	 * Do the move: just remove the entry from the source directory
	 * and insert it into the target one.
	 */
	FUNC20(fdvp, de);

	if (fcnp->cn_flags & DOWHITEOUT)
		FUNC22(fdvp, fcnp);
	if (tcnp->cn_flags & ISWHITEOUT)
		FUNC23(tdvp, tcnp);

	/*
	 * If the name has changed, we need to make it effective by changing
	 * it in the directory entry.
	 */
	if (newname != NULL) {
		FUNC2(tcnp->cn_namelen <= MAXNAMLEN);

		FUNC17(de->ud.td_name, M_TMPFSNAME);
		de->ud.td_name = newname;
		FUNC24(de, tcnp->cn_nameptr, tcnp->cn_namelen);

		fnode->tn_status |= TMPFS_NODE_CHANGED;
		tdnode->tn_status |= TMPFS_NODE_MODIFIED;
	}

	/*
	 * If we are overwriting an entry, we have to remove the old one
	 * from the target directory.
	 */
	if (tvp != NULL) {
		struct tmpfs_dirent *tde;

		/* Remove the old entry from the target directory. */
		tde = FUNC21(tdnode, tnode, tcnp);
		FUNC20(tdvp, tde);

		/*
		 * Free the directory entry we just deleted.  Note that the
		 * node referred by it will not be removed until the vnode is
		 * really reclaimed.
		 */
		FUNC25(FUNC9(tvp->v_mount), tde);
	}

	FUNC19(tdvp, de);

	if (FUNC27(fvp)) {
		FUNC15(fvp);
		if (tvp != NULL)
			FUNC15(tvp);
		FUNC16(tdvp);
	}

	error = 0;

out_locked:
	if (fdvp != tdvp && fdvp != tvp)
		FUNC11(fdvp, 0);

out:
	/*
	 * Release target nodes.
	 * XXX: I don't understand when tdvp can be the same as tvp, but
	 * other code takes care of this...
	 */
	if (tdvp == tvp)
		FUNC32(tdvp);
	else
		FUNC31(tdvp);
	if (tvp != NULL)
		FUNC31(tvp);

	/* Release source nodes. */
	FUNC32(fdvp);
	FUNC32(fvp);

	if (mp != NULL)
		FUNC29(mp);

	return (error);
}