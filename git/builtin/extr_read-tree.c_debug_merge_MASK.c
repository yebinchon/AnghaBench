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
struct unpack_trees_options {int merge_size; } ;
struct cache_entry {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct cache_entry const* const,struct unpack_trees_options*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC3(const struct cache_entry * const *stages,
		       struct unpack_trees_options *o)
{
	int i;

	FUNC1("* %d-way merge\n", o->merge_size);
	FUNC0("index", stages[0], o);
	for (i = 1; i <= o->merge_size; i++) {
		char buf[24];
		FUNC2(buf, sizeof(buf), "ent#%d", i);
		FUNC0(buf, stages[i], o);
	}
	return 0;
}