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
struct pmclog_buffer {size_t plb_domain; } ;
struct TYPE_2__ {int /*<<< orphan*/  pdbh_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__** pmc_dom_hdrs ; 
 int /*<<< orphan*/  FUNC2 (struct pmclog_buffer*) ; 

__attribute__((used)) static inline void
FUNC3(struct pmclog_buffer *plb)
{
	FUNC0(&pmc_dom_hdrs[plb->plb_domain]->pdbh_mtx);
	FUNC2(plb);
	FUNC1(&pmc_dom_hdrs[plb->plb_domain]->pdbh_mtx);
}