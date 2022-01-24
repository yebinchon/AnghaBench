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
struct vfsconf {int dummy; } ;
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int FUNC0 (struct vfsconf*) ; 
 int FUNC1 (struct vfsconf*) ; 

int
FUNC2(module_t mod, int type, void *data)
{
	struct vfsconf *vfc;
	int error = 0;

	vfc = (struct vfsconf *)data;

	switch (type) {
	case MOD_LOAD:
		if (vfc)
			error = FUNC0(vfc);
		break;

	case MOD_UNLOAD:
		if (vfc)
			error = FUNC1(vfc);
		break;
	default:
		error = EOPNOTSUPP;
		break;
	}
	return (error);
}