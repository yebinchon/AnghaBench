#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_9__ {int type; int /*<<< orphan*/  string; } ;
typedef  TYPE_2__ tok_t ;
struct TYPE_8__ {int /*<<< orphan*/  n_wq; } ;
struct TYPE_10__ {scalar_t__ ulp_start; scalar_t__ ulp_max; TYPE_1__ config; } ;
typedef  TYPE_3__ ocs_hw_t ;
struct TYPE_11__ {int rptcount_idx; int /*<<< orphan*/ * rptcount; } ;
typedef  TYPE_4__ ocs_hw_qtop_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCS_HW_MAX_MRQS ; 
#define  TOK_NUMBER 129 
#define  TOK_NUMBER_VALUE 128 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC4(ocs_hw_t *hw, ocs_hw_qtop_t *qtop, tok_t *tok)
{
	uint32_t rval = 0;
	uint32_t num_cpus = FUNC1();

	switch(tok->type) {
	case TOK_NUMBER_VALUE:
		if (FUNC2(tok->string, "$ncpu") == 0) {
			rval = num_cpus;
		} else if (FUNC2(tok->string, "$ncpu1") == 0) {
			rval = num_cpus - 1;
		} else if (FUNC2(tok->string, "$nwq") == 0) {
			if (hw != NULL) {
				rval = hw->config.n_wq;
			}
		} else if (FUNC2(tok->string, "$maxmrq") == 0) {
			rval = FUNC0(num_cpus, OCS_HW_MAX_MRQS);
		} else if (FUNC2(tok->string, "$nulp") == 0) {
			rval = hw->ulp_max - hw->ulp_start + 1;
		} else if ((qtop->rptcount_idx > 0) && FUNC2(tok->string, "$rpt0") == 0) {
			rval = qtop->rptcount[qtop->rptcount_idx-1];
		} else if ((qtop->rptcount_idx > 1) && FUNC2(tok->string, "$rpt1") == 0) {
			rval = qtop->rptcount[qtop->rptcount_idx-2];
		} else if ((qtop->rptcount_idx > 2) && FUNC2(tok->string, "$rpt2") == 0) {
			rval = qtop->rptcount[qtop->rptcount_idx-3];
		} else if ((qtop->rptcount_idx > 3) && FUNC2(tok->string, "$rpt3") == 0) {
			rval = qtop->rptcount[qtop->rptcount_idx-4];
		} else {
			rval = FUNC3(tok->string, 0, 0);
		}
		break;
	case TOK_NUMBER:
		rval = FUNC3(tok->string, 0, 0);
		break;
	default:
		break;
	}
	return rval;
}