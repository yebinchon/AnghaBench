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
struct pmc_soft {int dummy; } ;
typedef  enum pmc_event { ____Placeholder_pmc_event } pmc_event ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PMC_EV_SOFT_FIRST ; 
 int PMC_EV_SOFT_LAST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int pmc_softevents ; 
 struct pmc_soft** pmc_softs ; 
 int /*<<< orphan*/  pmc_softs_mtx ; 

struct pmc_soft *
FUNC3(enum pmc_event ev)
{
	struct pmc_soft *ps;

	if (ev == 0 || (ev - PMC_EV_SOFT_FIRST) >= pmc_softevents)
		return NULL;

	FUNC0((int)ev >= PMC_EV_SOFT_FIRST &&
	    (int)ev <= PMC_EV_SOFT_LAST,
	    ("event out of range"));

	FUNC1(&pmc_softs_mtx);

	ps = pmc_softs[ev - PMC_EV_SOFT_FIRST];
	if (ps == NULL)
		FUNC2(&pmc_softs_mtx);

	return ps;
}