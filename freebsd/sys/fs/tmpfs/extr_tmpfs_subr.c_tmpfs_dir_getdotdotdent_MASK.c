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
struct uio {scalar_t__ uio_offset; scalar_t__ uio_resid; } ;
struct TYPE_2__ {struct tmpfs_node* tn_parent; } ;
struct tmpfs_node {int /*<<< orphan*/  tn_id; TYPE_1__ tn_dir; } ;
struct tmpfs_mount {int dummy; } ;
struct dirent {int d_namlen; char* d_name; scalar_t__ d_reclen; int /*<<< orphan*/  d_type; int /*<<< orphan*/  d_fileno; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_DIR ; 
 int EJUSTRETURN ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct dirent*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct tmpfs_node*) ; 
 scalar_t__ TMPFS_DIRCOOKIE_DOTDOT ; 
 int /*<<< orphan*/  TMPFS_NODE_ACCESSED ; 
 int /*<<< orphan*/  FUNC3 (struct tmpfs_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct tmpfs_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct tmpfs_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct dirent*) ; 
 int /*<<< orphan*/  FUNC7 (struct tmpfs_mount*,struct tmpfs_node*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct dirent*,scalar_t__,struct uio*) ; 

__attribute__((used)) static int
FUNC9(struct tmpfs_mount *tm, struct tmpfs_node *node,
    struct uio *uio)
{
	struct tmpfs_node *parent;
	struct dirent dent;
	int error;

	FUNC5(node);
	FUNC1(uio->uio_offset == TMPFS_DIRCOOKIE_DOTDOT);

	/*
	 * Return ENOENT if the current node is already removed.
	 */
	FUNC2(node);
	parent = node->tn_dir.tn_parent;
	if (parent == NULL)
		return (ENOENT);

	FUNC3(parent);
	dent.d_fileno = parent->tn_id;
	FUNC4(parent);

	dent.d_type = DT_DIR;
	dent.d_namlen = 2;
	dent.d_name[0] = '.';
	dent.d_name[1] = '.';
	dent.d_reclen = FUNC0(&dent);
	FUNC6(&dent);

	if (dent.d_reclen > uio->uio_resid)
		error = EJUSTRETURN;
	else
		error = FUNC8(&dent, dent.d_reclen, uio);

	FUNC7(tm, node, TMPFS_NODE_ACCESSED);

	return (error);
}