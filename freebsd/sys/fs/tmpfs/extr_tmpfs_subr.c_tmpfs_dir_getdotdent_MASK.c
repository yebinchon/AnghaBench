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
struct uio {scalar_t__ uio_offset; scalar_t__ uio_resid; } ;
struct tmpfs_node {int /*<<< orphan*/  tn_id; } ;
struct tmpfs_mount {int dummy; } ;
struct dirent {int d_namlen; char* d_name; scalar_t__ d_reclen; int /*<<< orphan*/  d_type; int /*<<< orphan*/  d_fileno; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_DIR ; 
 int EJUSTRETURN ; 
 scalar_t__ FUNC0 (struct dirent*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ TMPFS_DIRCOOKIE_DOT ; 
 int /*<<< orphan*/  TMPFS_NODE_ACCESSED ; 
 int /*<<< orphan*/  FUNC2 (struct tmpfs_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct dirent*) ; 
 int /*<<< orphan*/  FUNC4 (struct tmpfs_mount*,struct tmpfs_node*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dirent*,scalar_t__,struct uio*) ; 

__attribute__((used)) static int
FUNC6(struct tmpfs_mount *tm, struct tmpfs_node *node,
    struct uio *uio)
{
	int error;
	struct dirent dent;

	FUNC2(node);
	FUNC1(uio->uio_offset == TMPFS_DIRCOOKIE_DOT);

	dent.d_fileno = node->tn_id;
	dent.d_type = DT_DIR;
	dent.d_namlen = 1;
	dent.d_name[0] = '.';
	dent.d_reclen = FUNC0(&dent);
	FUNC3(&dent);

	if (dent.d_reclen > uio->uio_resid)
		error = EJUSTRETURN;
	else
		error = FUNC5(&dent, dent.d_reclen, uio);

	FUNC4(tm, node, TMPFS_NODE_ACCESSED);

	return (error);
}