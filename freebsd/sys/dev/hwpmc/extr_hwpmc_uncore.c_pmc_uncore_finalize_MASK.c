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
struct pmc_mdep {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INI ; 
 int /*<<< orphan*/  MDP ; 
 int /*<<< orphan*/  M_PMC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * uncore_pcpu ; 

void
FUNC2(struct pmc_mdep *md)
{
	FUNC0(MDP,INI,1, "uncore-finalize");

	FUNC1(uncore_pcpu, M_PMC);
	uncore_pcpu = NULL;
}