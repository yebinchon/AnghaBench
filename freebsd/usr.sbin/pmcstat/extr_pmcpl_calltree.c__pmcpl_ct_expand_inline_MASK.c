#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uintfptr_t ;
struct TYPE_7__ {int npmcs; int /*<<< orphan*/ * sb; } ;
struct pmcpl_ct_node {int pct_ninstr; TYPE_2__* pct_instr; TYPE_1__ pct_samples; int /*<<< orphan*/  pct_sym; scalar_t__ pct_func; TYPE_3__* pct_image; } ;
typedef  int /*<<< orphan*/  sourcefile ;
typedef  int /*<<< orphan*/  funcname ;
typedef  int /*<<< orphan*/  ffuncname ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_11__ {scalar_t__* sb; } ;
struct TYPE_10__ {int pa_verbosity; int /*<<< orphan*/  pa_printfile; } ;
struct TYPE_9__ {scalar_t__ pi_vaddr; } ;
struct TYPE_8__ {TYPE_6__ pctf_samples; scalar_t__ pctf_func; } ;

/* Variables and functions */
 int PATH_MAX ; 
 unsigned int FUNC0 (int,TYPE_6__*) ; 
 TYPE_5__ args ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,void*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pmcpl_ct_node*,int,scalar_t__,unsigned int) ; 
 struct pmcpl_ct_node* FUNC4 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct pmcpl_ct_node*,struct pmcpl_ct_node*,int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,scalar_t__,char*,int,unsigned int*,char*,int) ; 
 int pmcstat_npmcs ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,char*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 

__attribute__((used)) static void
FUNC9(struct pmcpl_ct_node *ct)
{
	int i, j;
	unsigned fline, line, v;
	uintfptr_t faddr, addr, pc;
	char sourcefile[PATH_MAX];
	char ffuncname[PATH_MAX], funcname[PATH_MAX];
	char buffer[PATH_MAX];
	struct pmcpl_ct_node *child;

	/*
	 * Resolve parent and compare to each instr location.
	 */
	faddr = ct->pct_image->pi_vaddr + ct->pct_func;
	fline = 0;
	if (!FUNC6(ct->pct_image, faddr,
	    sourcefile, sizeof(sourcefile), &fline,
	    ffuncname, sizeof(ffuncname)))
		return;

	for (i = 0; i < ct->pct_ninstr; i++) {
		addr = ct->pct_image->pi_vaddr +
		    ct->pct_instr[i].pctf_func;
		line = 0;
		if (!FUNC6(ct->pct_image, addr,
		    sourcefile, sizeof(sourcefile), &line,
		    funcname, sizeof(funcname)))
			continue;

		if (FUNC8(funcname, ffuncname) == 0)
			continue;

		/*
		 * - Lookup/create inline node by function name.
		 * - Move instr PMCs to the inline node.
		 * - Link nodes.
		 * The lookup create a specific node per image/pc.
		 */
		if (args.pa_verbosity >= 2)
			FUNC2(args.pa_printfile,
			    "WARNING: inlined function at %p %s in %s\n",
			    (void *)addr, funcname, ffuncname);

		FUNC7(buffer, sizeof(buffer), "%s@%s",
			funcname, ffuncname);
		child = FUNC4(ct->pct_image,
		    ct->pct_func, ct->pct_sym, sourcefile, buffer);
		FUNC1(child != NULL);
		pc = ct->pct_instr[i].pctf_func;
		for (j = 0; j<pmcstat_npmcs; j++) {
			v = FUNC0(j,
			    &ct->pct_instr[i].pctf_samples);
			if (v == 0)
				continue;
			FUNC3(child, j, pc, v);
			FUNC5(ct, child, j, v, 0);
			if (j < ct->pct_samples.npmcs)
				ct->pct_samples.sb[j] -=
				    ct->pct_instr[i].pctf_samples.sb[j];
			ct->pct_instr[i].pctf_samples.sb[j] = 0;
		}
	}
}