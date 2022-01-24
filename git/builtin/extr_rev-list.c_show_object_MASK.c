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
struct rev_list_info {int flags; } ;
struct object {int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int REV_LIST_QUIET ; 
 scalar_t__ arg_show_object_names ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct object*,char const*,void*) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  progress ; 
 int /*<<< orphan*/  progress_counter ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct object*,char const*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC5(struct object *obj, const char *name, void *cb_data)
{
	struct rev_list_info *info = cb_data;
	if (FUNC1(obj, name, cb_data))
		return;
	FUNC0(progress, ++progress_counter);
	if (info->flags & REV_LIST_QUIET)
		return;
	if (arg_show_object_names)
		FUNC4(stdout, obj, name);
	else
		FUNC3("%s\n", FUNC2(&obj->oid));
}