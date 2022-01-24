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
struct g_raid_md_class {int /*<<< orphan*/  mdc_priority; } ;
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 struct g_raid_md_class* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct g_raid_md_class*,struct g_raid_md_class*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct g_raid_md_class*,int /*<<< orphan*/ ) ; 
 struct g_raid_md_class* FUNC3 (struct g_raid_md_class*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct g_raid_md_class*,int /*<<< orphan*/ ) ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  g_raid_class ; 
 int /*<<< orphan*/  g_raid_md_classes ; 
 int /*<<< orphan*/  g_raid_started ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mdc_list ; 

int
FUNC6(module_t mod, int type, void *arg)
{
	struct g_raid_md_class *class, *c, *nc;
	int error;

	error = 0;
	class = arg;
	switch (type) {
	case MOD_LOAD:
		c = FUNC0(&g_raid_md_classes);
		if (c == NULL || c->mdc_priority > class->mdc_priority)
			FUNC2(&g_raid_md_classes, class, mdc_list);
		else {
			while ((nc = FUNC3(c, mdc_list)) != NULL &&
			    nc->mdc_priority < class->mdc_priority)
				c = nc;
			FUNC1(c, class, mdc_list);
		}
		if (g_raid_started)
			FUNC5(&g_raid_class);
		break;
	case MOD_UNLOAD:
		FUNC4(class, mdc_list);
		break;
	default:
		error = EOPNOTSUPP;
		break;
	}

	return (error);
}