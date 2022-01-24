#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uintfptr_t ;
struct pmcpl_ct_node {scalar_t__ pct_type; int pct_ninstr; int /*<<< orphan*/  pct_samples; TYPE_2__* pct_instr; TYPE_3__* pct_image; scalar_t__ pct_func; TYPE_1__* pct_sym; int /*<<< orphan*/  pct_ifn; int /*<<< orphan*/  pct_ifl; } ;
typedef  int /*<<< orphan*/  sourcefile ;
typedef  int /*<<< orphan*/  funcname ;
struct TYPE_8__ {int /*<<< orphan*/  pa_graphfile; } ;
struct TYPE_7__ {scalar_t__ pi_vaddr; int /*<<< orphan*/  pi_fullpath; } ;
struct TYPE_6__ {int /*<<< orphan*/  pctf_samples; scalar_t__ pctf_func; } ;
struct TYPE_5__ {int /*<<< orphan*/  ps_name; } ;

/* Variables and functions */
 int PATH_MAX ; 
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ PMCPL_PCT_NAME ; 
 TYPE_4__ args ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct pmcpl_ct_node*,scalar_t__,int) ; 
 scalar_t__ FUNC3 (TYPE_3__*,scalar_t__,char*,int,int*,char*,int) ; 
 int pmcstat_npmcs ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct pmcpl_ct_node *ct)
{
	int i, j, fline, line;
	uintfptr_t faddr, addr;
	char sourcefile[PATH_MAX];
	char funcname[PATH_MAX];

	/*
	 * Object binary.
	 */
	FUNC1(args.pa_graphfile, "ob=%s\n",
	    FUNC4(ct->pct_image->pi_fullpath));

	/*
	 * Function name.
	 */
	faddr = ct->pct_image->pi_vaddr + ct->pct_func;
	fline = 0;
	if (ct->pct_type == PMCPL_PCT_NAME) {
		FUNC1(args.pa_graphfile, "fl=%s\nfn=%s\n",
		    FUNC4(ct->pct_ifl),
		    FUNC4(ct->pct_ifn));
	} else if (FUNC3(ct->pct_image, faddr,
	    sourcefile, sizeof(sourcefile), &fline,
	    funcname, sizeof(funcname))) {
		FUNC1(args.pa_graphfile, "fl=%s\nfn=%s\n",
		    sourcefile, funcname);
	} else {
		if (ct->pct_sym != NULL)
			FUNC1(args.pa_graphfile, "fl=???\nfn=%s\n",
			    FUNC4(ct->pct_sym->ps_name));
		else
			FUNC1(args.pa_graphfile, "fl=???\nfn=%p\n",
			    (void *)(ct->pct_image->pi_vaddr + ct->pct_func));
	}

	/*
	 * Self cost.
	 */
	if (ct->pct_ninstr > 0) {
		/*
		 * Per location cost.
		 */
		for (i = 0; i < ct->pct_ninstr; i++) {
			addr = ct->pct_image->pi_vaddr +
			    ct->pct_instr[i].pctf_func;
			line = 0;
			FUNC3(ct->pct_image, addr,
			    sourcefile, sizeof(sourcefile), &line,
			    funcname, sizeof(funcname));
			FUNC1(args.pa_graphfile, "%p %u",
			    (void *)addr, line);
			for (j = 0; j<pmcstat_npmcs; j++)
				FUNC1(args.pa_graphfile, " %u",
				    FUNC0(j,
				    &ct->pct_instr[i].pctf_samples));
			FUNC1(args.pa_graphfile, "\n");
		}
	} else {
		/* Global cost function cost. */
		FUNC1(args.pa_graphfile, "%p %u", (void *)faddr, fline);
		for (i = 0; i<pmcstat_npmcs ; i++)
			FUNC1(args.pa_graphfile, " %u",
			    FUNC0(i, &ct->pct_samples));
		FUNC1(args.pa_graphfile, "\n");
	}

	FUNC2(ct, faddr, fline);
}