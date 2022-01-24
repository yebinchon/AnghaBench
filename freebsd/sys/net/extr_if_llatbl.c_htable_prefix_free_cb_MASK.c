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
struct prefix_match_data {int /*<<< orphan*/  dchain; int /*<<< orphan*/  flags; int /*<<< orphan*/  mask; int /*<<< orphan*/  addr; } ;
struct lltable {scalar_t__ (* llt_match_prefix ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct llentry*) ;} ;
struct llentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct llentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct llentry*) ; 
 int /*<<< orphan*/  lle_chain ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct llentry*) ; 

__attribute__((used)) static int
FUNC3(struct lltable *llt, struct llentry *lle, void *farg)
{
	struct prefix_match_data *pmd;

	pmd = (struct prefix_match_data *)farg;

	if (llt->llt_match_prefix(pmd->addr, pmd->mask, pmd->flags, lle)) {
		FUNC1(lle);
		FUNC0(&pmd->dchain, lle, lle_chain);
	}

	return (0);
}