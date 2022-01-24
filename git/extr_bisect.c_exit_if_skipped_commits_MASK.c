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
struct object_id {int dummy; } ;
struct commit_list {TYPE_2__* item; struct commit_list* next; } ;
struct TYPE_3__ {struct object_id const oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 char* term_bad ; 

__attribute__((used)) static void FUNC4(struct commit_list *tried,
				    const struct object_id *bad)
{
	if (!tried)
		return;

	FUNC3("There are only 'skip'ped commits left to test.\n"
	       "The first %s commit could be any of:\n", term_bad);

	for ( ; tried; tried = tried->next)
		FUNC3("%s\n", FUNC2(&tried->item->object.oid));

	if (bad)
		FUNC3("%s\n", FUNC2(bad));
	FUNC3(FUNC0("We cannot bisect more!\n"));
	FUNC1(2);
}