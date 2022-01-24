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
struct repository {TYPE_1__* parsed_objects; } ;
struct object_id {int /*<<< orphan*/  hash; } ;
struct commit_graft {int dummy; } ;
struct TYPE_2__ {struct commit_graft** grafts; } ;

/* Variables and functions */
 int FUNC0 (struct repository*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct repository*) ; 

struct commit_graft *FUNC2(struct repository *r, const struct object_id *oid)
{
	int pos;
	FUNC1(r);
	pos = FUNC0(r, oid->hash);
	if (pos < 0)
		return NULL;
	return r->parsed_objects->grafts[pos];
}