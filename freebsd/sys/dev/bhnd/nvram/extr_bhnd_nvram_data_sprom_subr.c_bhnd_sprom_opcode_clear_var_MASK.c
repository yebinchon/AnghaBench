#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  have_bind; } ;
struct TYPE_4__ {scalar_t__ var_state; TYPE_2__ var; } ;
typedef  TYPE_1__ bhnd_sprom_opcode_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ SPROM_OPCODE_VAR_STATE_DONE ; 
 scalar_t__ SPROM_OPCODE_VAR_STATE_NONE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(bhnd_sprom_opcode_state *state)
{
	if (state->var_state == SPROM_OPCODE_VAR_STATE_NONE)
		return (0);

	FUNC0(state->var_state == SPROM_OPCODE_VAR_STATE_DONE,
	    ("incomplete variable definition"));
	FUNC0(!state->var.have_bind, ("stale bind state"));

	FUNC1(&state->var, 0, sizeof(state->var));
	state->var_state = SPROM_OPCODE_VAR_STATE_NONE;

	return (0);
}