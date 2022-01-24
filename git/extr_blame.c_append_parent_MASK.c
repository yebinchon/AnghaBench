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
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct commit_list {int dummy; } ;
struct commit {int dummy; } ;
struct TYPE_2__ {struct commit_list* next; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct commit*,struct commit_list**) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 struct commit* FUNC2 (struct repository*,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC3 (struct object_id const*) ; 

__attribute__((used)) static struct commit_list **FUNC4(struct repository *r,
					  struct commit_list **tail,
					  const struct object_id *oid)
{
	struct commit *parent;

	parent = FUNC2(r, oid);
	if (!parent)
		FUNC1("no such commit %s", FUNC3(oid));
	return &FUNC0(parent, tail)->next;
}