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
struct vfsoptlist {int dummy; } ;
struct vfsopt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_MOUNT ; 
 int /*<<< orphan*/  FUNC0 (struct vfsoptlist*) ; 
 struct vfsopt* FUNC1 (struct vfsoptlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct vfsoptlist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vfsoptlist*,struct vfsopt*) ; 

void
FUNC4(struct vfsoptlist *opts)
{
	struct vfsopt *opt;

	while (!FUNC0(opts)) {
		opt = FUNC1(opts);
		FUNC3(opts, opt);
	}
	FUNC2(opts, M_MOUNT);
}