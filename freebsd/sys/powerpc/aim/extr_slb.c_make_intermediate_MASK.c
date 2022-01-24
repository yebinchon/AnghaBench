#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {struct slbtnode** ua_child; } ;
struct slbtnode {int ua_level; scalar_t__ ua_base; int /*<<< orphan*/  ua_alloc; TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  slbt_zone ; 
 struct slbtnode* FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct slbtnode*
FUNC6(uint64_t esid, struct slbtnode *parent)
{
	struct slbtnode *child, *inter;
	int idx, level;

	idx = FUNC2(esid, parent->ua_level);
	child = parent->u.ua_child[idx];
	FUNC0(FUNC1(esid, child->ua_level) != child->ua_base,
	    ("No need for an intermediate node?"));

	/*
	 * Find the level where the existing child and our new esid
	 * meet.  It must be lower than parent->ua_level or we would
	 * have chosen a different index in parent.
	 */
	level = child->ua_level + 1;
	while (FUNC1(esid, level) !=
	    FUNC1(child->ua_base, level))
		level++;
	FUNC0(level < parent->ua_level,
	    ("Found splitting level %d for %09jx and %09jx, "
	    "but it's the same as %p's",
	    level, esid, child->ua_base, parent));

	/* unlock and M_WAITOK and loop? */
	inter = FUNC5(slbt_zone, M_NOWAIT | M_ZERO);
	FUNC0(inter != NULL, ("unhandled NULL case"));

	/* Set up intermediate node to point to child ... */
	inter->ua_level = level;
	inter->ua_base = FUNC1(esid, inter->ua_level);
	idx = FUNC2(child->ua_base, inter->ua_level);
	inter->u.ua_child[idx] = child;
	FUNC4(&inter->ua_alloc, idx);
	FUNC3();

	/* Set up parent to point to intermediate node ... */
	idx = FUNC2(inter->ua_base, parent->ua_level);
	parent->u.ua_child[idx] = inter;
	FUNC4(&parent->ua_alloc, idx);

	return (inter);
}