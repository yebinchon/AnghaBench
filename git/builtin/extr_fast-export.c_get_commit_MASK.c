#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int const type; int /*<<< orphan*/  oid; } ;
struct tag {scalar_t__ tagged; TYPE_1__ object; } ;
struct rev_cmdline_entry {int /*<<< orphan*/  name; TYPE_2__* item; } ;
struct commit {int dummy; } ;
struct TYPE_6__ {struct tag* util; } ;
struct TYPE_5__ {int type; } ;

/* Variables and functions */
#define  OBJ_COMMIT 129 
#define  OBJ_TAG 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  tag_refs ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static struct commit *FUNC3(struct rev_cmdline_entry *e, char *full_name)
{
	switch (e->item->type) {
	case OBJ_COMMIT:
		return (struct commit *)e->item;
	case OBJ_TAG: {
		struct tag *tag = (struct tag *)e->item;

		/* handle nested tags */
		while (tag && tag->object.type == OBJ_TAG) {
			FUNC1(the_repository, &tag->object.oid);
			FUNC2(&tag_refs, full_name)->util = tag;
			tag = (struct tag *)tag->tagged;
		}
		if (!tag)
			FUNC0("Tag %s points nowhere?", e->name);
		return (struct commit *)tag;
		break;
	}
	default:
		return NULL;
	}
}