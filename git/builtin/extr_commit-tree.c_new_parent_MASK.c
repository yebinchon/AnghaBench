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
struct object_id {int dummy; } ;
struct commit_list {struct commit_list* next; struct commit* item; } ;
struct TYPE_2__ {struct object_id oid; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct commit*,struct commit_list**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct object_id*) ; 

__attribute__((used)) static void FUNC4(struct commit *parent, struct commit_list **parents_p)
{
	struct object_id *oid = &parent->object.oid;
	struct commit_list *parents;
	for (parents = *parents_p; parents; parents = parents->next) {
		if (parents->item == parent) {
			FUNC2(FUNC0("duplicate parent %s ignored"), FUNC3(oid));
			return;
		}
		parents_p = &parents->next;
	}
	FUNC1(parent, parents_p);
}