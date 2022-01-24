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
struct vnode {int dummy; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char*,struct mount*,int /*<<< orphan*/ *,struct vnode**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  udf_vnodeops ; 

int
FUNC2(struct mount *mp, struct vnode **vpp, struct thread *td)
{
	int error;
	struct vnode *vp;

	error = FUNC0("udf", mp, &udf_vnodeops, &vp);
	if (error) {
		FUNC1("udf_allocv: failed to allocate new vnode\n");
		return (error);
	}

	*vpp = vp;
	return (0);
}