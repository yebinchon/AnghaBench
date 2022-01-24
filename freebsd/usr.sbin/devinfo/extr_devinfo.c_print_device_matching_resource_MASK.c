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
struct indent_arg {int indent; scalar_t__ arg; } ;
struct devinfo_res {int /*<<< orphan*/  dr_device; } ;
struct devinfo_dev {int dummy; } ;

/* Variables and functions */
 struct devinfo_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct devinfo_res*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int
FUNC3(struct devinfo_res *res, void *arg)
{
	struct indent_arg	*ia = (struct indent_arg *)arg;
	struct devinfo_dev	*dev = (struct devinfo_dev *)ia->arg;
	int			i;

	if (FUNC0(res->dr_device) == dev) {
		/* in 'detect' mode, found a match */
		if (ia->indent == 0)
			return(1);
		for (i = 0; i < ia->indent; i++)
			FUNC2(" ");
		FUNC1(res);
		FUNC2("\n");
	}
	return(0);
}