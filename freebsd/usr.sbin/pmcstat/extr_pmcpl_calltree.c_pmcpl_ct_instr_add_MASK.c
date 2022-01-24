#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uintfptr_t ;
struct pmcpl_ct_node {int pct_ninstr; struct pmcpl_ct_instr* pct_instr; int /*<<< orphan*/  pct_instr_c; } ;
struct TYPE_3__ {unsigned int* sb; } ;
struct pmcpl_ct_instr {scalar_t__ pctf_func; TYPE_1__ pctf_samples; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,struct pmcpl_ct_instr**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3(struct pmcpl_ct_node *ct, int pmcin,
    uintfptr_t pc, unsigned v)
{
	int i;
	struct pmcpl_ct_instr *in;

	for (i = 0; i<ct->pct_ninstr; i++) {
		if (ct->pct_instr[i].pctf_func == pc) {
			in = &ct->pct_instr[i];
			FUNC1(&in->pctf_samples);
			in->pctf_samples.sb[pmcin] += v;
			return;
		}
	}

	FUNC0(ct->pct_ninstr, &ct->pct_instr_c, &ct->pct_instr);
	in = &ct->pct_instr[ct->pct_ninstr];
	in->pctf_func = pc;
	FUNC2(&in->pctf_samples);
	FUNC1(&in->pctf_samples);
	in->pctf_samples.sb[pmcin] = v;
	ct->pct_ninstr++;
}