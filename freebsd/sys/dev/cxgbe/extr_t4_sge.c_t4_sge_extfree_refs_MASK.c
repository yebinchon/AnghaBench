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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  extfree_refs ; 
 int /*<<< orphan*/  extfree_rels ; 

uint64_t
FUNC1(void)
{
	uint64_t refs, rels;

	rels = FUNC0(extfree_rels);
	refs = FUNC0(extfree_refs);

	return (refs - rels);
}