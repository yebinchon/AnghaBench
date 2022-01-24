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
struct mount {int dummy; } ;
struct autofs_mount {int /*<<< orphan*/  am_root; } ;

/* Variables and functions */
 struct autofs_mount* FUNC0 (struct mount*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct mount*,int,struct vnode**) ; 

__attribute__((used)) static int
FUNC2(struct mount *mp, int flags, struct vnode **vpp)
{
	struct autofs_mount *amp;
	int error;

	amp = FUNC0(mp);

	error = FUNC1(amp->am_root, mp, flags, vpp);

	return (error);
}