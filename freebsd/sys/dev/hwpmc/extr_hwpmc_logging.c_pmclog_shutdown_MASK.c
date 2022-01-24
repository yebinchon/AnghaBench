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
struct pmclog_buffer {int /*<<< orphan*/  plb_base; } ;
struct TYPE_2__ {int /*<<< orphan*/  pdbh_plbs; int /*<<< orphan*/  pdbh_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_PMC ; 
 struct pmclog_buffer* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct pmclog_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  plb_next ; 
 TYPE_1__** pmc_dom_hdrs ; 
 int /*<<< orphan*/  pmc_kthread_mtx ; 
 int vm_ndomains ; 

void
FUNC4()
{
	struct pmclog_buffer *plb;
	int domain;

	FUNC3(&pmc_kthread_mtx);

	for (domain = 0; domain < vm_ndomains; domain++) {
		while ((plb = FUNC0(&pmc_dom_hdrs[domain]->pdbh_head)) != NULL) {
			FUNC1(&pmc_dom_hdrs[domain]->pdbh_head, plb, plb_next);
			FUNC2(plb->plb_base, M_PMC);
		}
		FUNC2(pmc_dom_hdrs[domain]->pdbh_plbs, M_PMC);
	}
}