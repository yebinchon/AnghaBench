#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ inuse_count; scalar_t__ iter_idx; TYPE_2__* tokens; } ;
typedef  TYPE_1__ tokarray_t ;
struct TYPE_7__ {int /*<<< orphan*/  string; int /*<<< orphan*/  subtype; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ tok_t ;
struct TYPE_8__ {int /*<<< orphan*/  os; } ;
typedef  TYPE_3__ ocs_hw_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(ocs_hw_t *hw, tokarray_t *tokarray)
{
	uint32_t i;
	tok_t *tok;

	FUNC0(hw->os, "Syntax error:\n");

	for (i = 0, tok = tokarray->tokens; (i <= tokarray->inuse_count); i++, tok++) {
		FUNC0(hw->os, "%s [%2d]    %-16s %-16s %s\n", (i == tokarray->iter_idx) ? ">>>" : "   ", i,
			FUNC2(tok->type), FUNC1(tok->subtype), tok->string);
	}
}