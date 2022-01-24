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
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct mqfs_node {int dummy; } ;
struct kmq_unlink_args {int /*<<< orphan*/  path; } ;
struct TYPE_2__ {int /*<<< orphan*/  mi_lock; int /*<<< orphan*/  mi_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENOENT ; 
 int MQFS_NAMELEN ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mqfs_node*,int /*<<< orphan*/ ) ; 
 TYPE_1__ mqfs_data ; 
 struct mqfs_node* FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(struct thread *td, struct kmq_unlink_args *uap)
{
	char path[MQFS_NAMELEN+1];
	struct mqfs_node *pn;
	int error, len;

	error = FUNC1(uap->path, path, MQFS_NAMELEN + 1, NULL);
        if (error)
		return (error);

	len = FUNC6(path);
	if (len < 2 || path[0] != '/' || FUNC4(path + 1, '/') != NULL)
		return (EINVAL);
	if (FUNC5(path, "/.") == 0 || FUNC5(path, "/..") == 0)
		return (EINVAL);
	FUNC0(path);

	FUNC7(&mqfs_data.mi_lock);
	pn = FUNC3(mqfs_data.mi_root, path + 1, len - 1, td->td_ucred);
	if (pn != NULL)
		error = FUNC2(pn, td->td_ucred);
	else
		error = ENOENT;
	FUNC8(&mqfs_data.mi_lock);
	return (error);
}