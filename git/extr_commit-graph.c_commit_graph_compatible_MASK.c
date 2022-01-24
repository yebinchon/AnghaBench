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
struct repository {TYPE_3__* parsed_objects; TYPE_2__* objects; int /*<<< orphan*/  gitdir; } ;
struct TYPE_6__ {scalar_t__ grafts_nr; } ;
struct TYPE_5__ {TYPE_1__* replace_map; } ;
struct TYPE_4__ {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct repository*) ; 
 int /*<<< orphan*/  FUNC2 (struct repository*) ; 
 int /*<<< orphan*/  FUNC3 (struct repository*) ; 
 scalar_t__ read_replace_refs ; 

__attribute__((used)) static int FUNC4(struct repository *r)
{
	if (!r->gitdir)
		return 0;

	if (read_replace_refs) {
		FUNC3(r);
		if (FUNC0(&r->objects->replace_map->map))
			return 0;
	}

	FUNC2(r);
	if (r->parsed_objects && r->parsed_objects->grafts_nr)
		return 0;
	if (FUNC1(r))
		return 0;

	return 1;
}