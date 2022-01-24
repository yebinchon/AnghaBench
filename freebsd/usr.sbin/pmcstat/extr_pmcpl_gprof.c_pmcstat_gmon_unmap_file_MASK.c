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
struct pmcstat_gmonfile {int /*<<< orphan*/ * pgf_gmondata; int /*<<< orphan*/  pgf_ndatabytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  MS_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct pmcstat_gmonfile *pgf)
{
	(void) FUNC0(pgf->pgf_gmondata, pgf->pgf_ndatabytes,
	    MS_SYNC);
	(void) FUNC1(pgf->pgf_gmondata, pgf->pgf_ndatabytes);
	pgf->pgf_gmondata = NULL;
}