#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cache_entry {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__** active_cache ; 
 int active_nr ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(int stage, const struct cache_entry *ce, int pos,
		       int overlay_mode)
{
	while (pos < active_nr &&
	       !FUNC3(active_cache[pos]->name, ce->name)) {
		if (FUNC1(active_cache[pos]) == stage)
			return 0;
		pos++;
	}
	if (!overlay_mode)
		return 0;
	if (stage == 2)
		return FUNC2(FUNC0("path '%s' does not have our version"), ce->name);
	else
		return FUNC2(FUNC0("path '%s' does not have their version"), ce->name);
}