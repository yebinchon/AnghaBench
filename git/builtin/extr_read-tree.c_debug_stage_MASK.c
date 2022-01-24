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
struct unpack_trees_options {struct cache_entry const* df_conflict_entry; } ;
struct cache_entry {int ce_mode; char* name; int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int FUNC0 (struct cache_entry const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3(const char *label, const struct cache_entry *ce,
			struct unpack_trees_options *o)
{
	FUNC2("%s ", label);
	if (!ce)
		FUNC2("(missing)\n");
	else if (ce == o->df_conflict_entry)
		FUNC2("(conflict)\n");
	else
		FUNC2("%06o #%d %s %.8s\n",
		       ce->ce_mode, FUNC0(ce), ce->name,
		       FUNC1(&ce->oid));
}