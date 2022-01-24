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
struct cache_ {int /*<<< orphan*/  entries_size; int /*<<< orphan*/  entries; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entries_bsearch_cmp_func ; 

__attribute__((used)) static struct cache_entry_ **
FUNC1(struct cache_ *the_cache, const char *entry_name)
{

	return ((struct cache_entry_ **)(FUNC0(entry_name, the_cache->entries,
		the_cache->entries_size, sizeof(struct cache_entry_ *),
		entries_bsearch_cmp_func)));
}