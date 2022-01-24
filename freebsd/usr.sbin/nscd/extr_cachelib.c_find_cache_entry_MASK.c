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
struct cache_entry_ {int dummy; } ;
struct cache_ {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cache_entry_* (*) (struct cache_*,char const*)) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_entry_* (*) (struct cache_*,char const*)) ; 
 struct cache_entry_** FUNC2 (struct cache_*,char const*) ; 

struct cache_entry_ *
FUNC3(struct cache_ *the_cache, const char *entry_name)
{
	struct cache_entry_ **result;

	FUNC0(find_cache_entry);
	result = FUNC2(the_cache, entry_name);

	if (result == NULL) {
		FUNC1(find_cache_entry);
		return (NULL);
	} else {
		FUNC1(find_cache_entry);
		return (*result);
	}
}