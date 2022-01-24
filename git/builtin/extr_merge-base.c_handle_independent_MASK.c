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
struct commit_list {TYPE_2__* item; struct commit_list* next; } ;
struct TYPE_3__ {int /*<<< orphan*/  oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct commit_list**) ; 
 int /*<<< orphan*/  FUNC1 (struct commit_list*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct commit_list**) ; 

__attribute__((used)) static int FUNC6(int count, const char **args)
{
	struct commit_list *revs = NULL, *rev;
	int i;

	for (i = count - 1; i >= 0; i--)
		FUNC0(FUNC2(args[i]), &revs);

	FUNC5(&revs);

	if (!revs)
		return 1;

	for (rev = revs; rev; rev = rev->next)
		FUNC4("%s\n", FUNC3(&rev->item->object.oid));

	FUNC1(revs);
	return 0;
}