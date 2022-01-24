#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cache_entry {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct cache_entry** active_cache ; 
 int active_nr ; 
 int FUNC1 (struct cache_entry const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(unsigned stages, const struct cache_entry *ce, int pos)
{
	unsigned seen = 0;
	const char *name = ce->name;

	while (pos < active_nr) {
		ce = active_cache[pos];
		if (FUNC3(name, ce->name))
			break;
		seen |= (1 << FUNC1(ce));
		pos++;
	}
	if ((stages & seen) != stages)
		return FUNC2(FUNC0("path '%s' does not have all necessary versions"),
			     name);
	return 0;
}