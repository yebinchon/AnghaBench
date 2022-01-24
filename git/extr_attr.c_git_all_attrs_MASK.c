#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct index_state {int dummy; } ;
struct attr_check_item {char const* value; } ;
struct attr_check {int all_attrs_nr; TYPE_1__* all_attrs; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {char* value; TYPE_2__* attr; } ;

/* Variables and functions */
 char const* ATTR__UNKNOWN ; 
 char const* ATTR__UNSET ; 
 struct attr_check_item* FUNC0 (struct attr_check*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct attr_check*) ; 
 int /*<<< orphan*/  FUNC2 (struct index_state const*,char const*,struct attr_check*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

void FUNC4(const struct index_state *istate,
		   const char *path, struct attr_check *check)
{
	int i;

	FUNC1(check);
	FUNC2(istate, path, check);

	for (i = 0; i < check->all_attrs_nr; i++) {
		const char *name = check->all_attrs[i].attr->name;
		const char *value = check->all_attrs[i].value;
		struct attr_check_item *item;
		if (value == ATTR__UNSET || value == ATTR__UNKNOWN)
			continue;
		item = FUNC0(check, FUNC3(name));
		item->value = value;
	}
}