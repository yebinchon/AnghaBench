#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pmcstat_pmcrecord {double pr_samples; float pr_dubious_frames; int /*<<< orphan*/  pr_pmcname; } ;
typedef  int /*<<< orphan*/  pmcname ;
struct TYPE_4__ {size_t pa_plugin; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* pl_topdisplay ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (float) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 TYPE_2__ args ; 
 TYPE_1__* plugins ; 
 scalar_t__ pmcstat_mergepmc ; 
 scalar_t__ pmcstat_pause ; 
 struct pmcstat_pmcrecord* FUNC6 (int) ; 
 int pmcstat_pmcinfilter ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 double ps_samples_period ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void
FUNC10(void)
{
	int v_attrs;
	float v;
	char pmcname[40];
	struct pmcstat_pmcrecord *pmcpr;

	/* If in pause mode do not refresh display. */
	if (pmcstat_pause)
		return;

	/* Wait until PMC pop in the log. */
	pmcpr = FUNC6(pmcstat_pmcinfilter);
	if (pmcpr == NULL)
		return;

	/* Format PMC name. */
	if (pmcstat_mergepmc)
		FUNC8(pmcname, sizeof(pmcname), "[%s]",
		    FUNC7(pmcpr->pr_pmcname));
	else
		FUNC8(pmcname, sizeof(pmcname), "%s.%d",
		    FUNC7(pmcpr->pr_pmcname),
		    pmcstat_pmcinfilter);

	/* Format samples count. */
	if (ps_samples_period > 0)
		v = (pmcpr->pr_samples * 100.0) / ps_samples_period;
	else
		v = 0.;
	v_attrs = FUNC2(v);

	FUNC3();
	FUNC5("PMC: %s Samples: %u ",
	    pmcname,
	    pmcpr->pr_samples);
	FUNC1(v_attrs);
	FUNC5("(%.1f%%) ", v);
	FUNC0(v_attrs);
	FUNC5(", %u unresolved\n\n",
	    pmcpr->pr_dubious_frames);
	if (plugins[args.pa_plugin].pl_topdisplay != NULL)
		plugins[args.pa_plugin].pl_topdisplay();
	FUNC4();
}