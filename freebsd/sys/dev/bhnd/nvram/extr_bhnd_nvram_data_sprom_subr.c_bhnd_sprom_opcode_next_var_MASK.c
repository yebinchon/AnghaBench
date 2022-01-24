#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  var_state; } ;
typedef  TYPE_1__ bhnd_sprom_opcode_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  SPROM_OPCODE_VAR 130 
#define  SPROM_OPCODE_VAR_IMM 129 
#define  SPROM_OPCODE_VAR_REL_IMM 128 
 int /*<<< orphan*/  SPROM_OPCODE_VAR_STATE_OPEN ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int
FUNC3(bhnd_sprom_opcode_state *state)
{
	uint8_t	opcode;
	int	error;

	/* Step until we hit a variable opcode */
	while ((error = FUNC2(state, &opcode)) == 0) {
		switch (FUNC1(opcode)) {
		case SPROM_OPCODE_VAR:
		case SPROM_OPCODE_VAR_IMM:
		case SPROM_OPCODE_VAR_REL_IMM:
			FUNC0(
			    state->var_state == SPROM_OPCODE_VAR_STATE_OPEN,
			    ("missing variable definition"));

			return (0);
		default:
			continue;
		}
	}

	/* Reached EOF, or evaluation failed */
	return (error);
}