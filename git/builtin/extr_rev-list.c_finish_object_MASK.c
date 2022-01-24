#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rev_list_info {TYPE_1__* revs; } ;
struct object {scalar_t__ type; int /*<<< orphan*/  oid; int /*<<< orphan*/  parsed; } ;
struct TYPE_2__ {scalar_t__ verify_objects; } ;

/* Variables and functions */
 scalar_t__ OBJ_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (struct object*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC3(struct object *obj, const char *name, void *cb_data)
{
	struct rev_list_info *info = cb_data;
	if (FUNC1(the_repository, &obj->oid, NULL, 0) < 0) {
		FUNC0(obj);
		return 1;
	}
	if (info->revs->verify_objects && !obj->parsed && obj->type != OBJ_COMMIT)
		FUNC2(the_repository, &obj->oid);
	return 0;
}