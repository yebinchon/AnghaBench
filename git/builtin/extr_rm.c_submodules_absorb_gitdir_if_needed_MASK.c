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
struct cache_entry {int /*<<< orphan*/  name; int /*<<< orphan*/  ce_mode; } ;
struct TYPE_4__ {int nr; TYPE_1__* entry; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABSORB_GITDIR_RECURSE_SUBMODULES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 struct cache_entry** active_cache ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int) ; 
 scalar_t__ FUNC5 (char const*) ; 
 TYPE_2__ list ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

__attribute__((used)) static void FUNC8(void)
{
	int i;
	for (i = 0; i < list.nr; i++) {
		const char *name = list.entry[i].name;
		int pos;
		const struct cache_entry *ce;

		pos = FUNC2(name, FUNC6(name));
		if (pos < 0) {
			pos = FUNC4(name, pos);
			if (pos < 0)
				continue;
		}
		ce = active_cache[pos];

		if (!FUNC0(ce->ce_mode) ||
		    !FUNC3(ce->name) ||
		    FUNC5(name))
			continue;

		if (!FUNC7(name))
			FUNC1(name,
				ABSORB_GITDIR_RECURSE_SUBMODULES);
	}
}