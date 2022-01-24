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
struct object {int type; int /*<<< orphan*/  flags; int /*<<< orphan*/  oid; } ;
struct fsck_options {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_LINK ; 
 int OBJ_ANY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct object *obj, int type, void *data, struct fsck_options *options)
{
	if (!obj)
		return -1;

	if (type != OBJ_ANY && obj->type != type)
		FUNC1(FUNC0("object type mismatch at %s"), FUNC2(&obj->oid));

	obj->flags |= FLAG_LINK;
	return 0;
}