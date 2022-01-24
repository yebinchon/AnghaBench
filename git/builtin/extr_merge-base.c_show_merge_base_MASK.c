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
struct commit {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct commit_list*) ; 
 struct commit_list* FUNC1 (struct commit*,int,struct commit**) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(struct commit **rev, int rev_nr, int show_all)
{
	struct commit_list *result, *r;

	result = FUNC1(rev[0], rev_nr - 1, rev + 1);

	if (!result)
		return 1;

	for (r = result; r; r = r->next) {
		FUNC3("%s\n", FUNC2(&r->item->object.oid));
		if (!show_all)
			break;
	}

	FUNC0(result);
	return 0;
}