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
struct repository {TYPE_2__* parsed_objects; } ;
struct TYPE_3__ {int /*<<< orphan*/  hash; } ;
struct commit_graft {TYPE_1__ oid; } ;
struct TYPE_4__ {int grafts_nr; struct commit_graft** grafts; int /*<<< orphan*/  grafts_alloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct commit_graft**,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct repository*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct commit_graft*) ; 
 int /*<<< orphan*/  FUNC3 (struct commit_graft**,struct commit_graft**,int) ; 

int FUNC4(struct repository *r, struct commit_graft *graft,
			  int ignore_dups)
{
	int pos = FUNC1(r, graft->oid.hash);

	if (0 <= pos) {
		if (ignore_dups)
			FUNC2(graft);
		else {
			FUNC2(r->parsed_objects->grafts[pos]);
			r->parsed_objects->grafts[pos] = graft;
		}
		return 1;
	}
	pos = -pos - 1;
	FUNC0(r->parsed_objects->grafts,
		   r->parsed_objects->grafts_nr + 1,
		   r->parsed_objects->grafts_alloc);
	r->parsed_objects->grafts_nr++;
	if (pos < r->parsed_objects->grafts_nr)
		FUNC3(r->parsed_objects->grafts + pos + 1,
			r->parsed_objects->grafts + pos,
			(r->parsed_objects->grafts_nr - pos - 1) *
			sizeof(*r->parsed_objects->grafts));
	r->parsed_objects->grafts[pos] = graft;
	return 0;
}