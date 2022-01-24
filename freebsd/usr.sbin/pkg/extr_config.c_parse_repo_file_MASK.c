#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ type; } ;
typedef  TYPE_1__ ucl_object_t ;
typedef  int /*<<< orphan*/ * ucl_object_iter_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFFILE_REPO ; 
 scalar_t__ UCL_OBJECT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ **,int) ; 
 char* FUNC2 (TYPE_1__ const*) ; 

__attribute__((used)) static void
FUNC3(ucl_object_t *obj)
{
	ucl_object_iter_t it = NULL;
	const ucl_object_t *cur;
	const char *key;

	while ((cur = FUNC1(obj, &it, true))) {
		key = FUNC2(cur);

		if (key == NULL)
			continue;

		if (cur->type != UCL_OBJECT)
			continue;

		FUNC0(cur, CONFFILE_REPO);
	}
}