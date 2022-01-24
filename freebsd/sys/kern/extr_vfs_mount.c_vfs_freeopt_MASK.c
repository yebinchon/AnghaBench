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
struct vfsopt {struct vfsopt* value; struct vfsopt* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_MOUNT ; 
 int /*<<< orphan*/  FUNC0 (struct vfsoptlist*,struct vfsopt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vfsopt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 

__attribute__((used)) static void
FUNC2(struct vfsoptlist *opts, struct vfsopt *opt)
{

	FUNC0(opts, opt, link);
	FUNC1(opt->name, M_MOUNT);
	if (opt->value != NULL)
		FUNC1(opt->value, M_MOUNT);
	FUNC1(opt, M_MOUNT);
}