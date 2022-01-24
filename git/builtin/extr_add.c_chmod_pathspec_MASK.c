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
struct pathspec {int dummy; } ;
struct cache_entry {char* name; } ;

/* Variables and functions */
 struct cache_entry** active_cache ; 
 int active_nr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cache_entry*,struct pathspec*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct cache_entry*,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  the_index ; 

__attribute__((used)) static void FUNC3(struct pathspec *pathspec, char flip)
{
	int i;

	for (i = 0; i < active_nr; i++) {
		struct cache_entry *ce = active_cache[i];

		if (pathspec && !FUNC0(&the_index, ce, pathspec, NULL))
			continue;

		if (FUNC1(ce, flip) < 0)
			FUNC2(stderr, "cannot chmod %cx '%s'\n", flip, ce->name);
	}
}