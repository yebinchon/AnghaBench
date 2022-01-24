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
struct udf_mnt {int /*<<< orphan*/  root_icb; } ;
struct mount {int dummy; } ;
typedef  int /*<<< orphan*/  ino_t ;

/* Variables and functions */
 struct udf_mnt* FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mount*,int /*<<< orphan*/ ,int,struct vnode**) ; 

__attribute__((used)) static int
FUNC3(struct mount *mp, int flags, struct vnode **vpp)
{
	struct udf_mnt *udfmp;
	ino_t id;

	udfmp = FUNC0(mp);

	id = FUNC1(&udfmp->root_icb);

	return (FUNC2(mp, id, flags, vpp));
}