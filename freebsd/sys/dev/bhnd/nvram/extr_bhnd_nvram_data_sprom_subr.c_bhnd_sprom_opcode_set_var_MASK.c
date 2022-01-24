#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct bhnd_nvram_vardefn {int /*<<< orphan*/  nelem; int /*<<< orphan*/  type; } ;
struct TYPE_6__ {scalar_t__ var_state; size_t vid; int /*<<< orphan*/  var; } ;
typedef  TYPE_1__ bhnd_sprom_opcode_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int EINVAL ; 
 scalar_t__ SPROM_OPCODE_VAR_STATE_NONE ; 
 scalar_t__ SPROM_OPCODE_VAR_STATE_OPEN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,size_t) ; 
 struct bhnd_nvram_vardefn* FUNC2 (size_t) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int
FUNC6(bhnd_sprom_opcode_state *state, size_t vid)
{
	const struct bhnd_nvram_vardefn	*var;
	int				 error;

	FUNC0(state->var_state == SPROM_OPCODE_VAR_STATE_NONE,
	    ("overwrite of open variable definition"));

	/* Locate the variable definition */
	if ((var = FUNC2(vid)) == NULL) {
		FUNC1(state, "unknown variable ID: %zu\n", vid);
		return (EINVAL);
	}

	/* Update vid and var state */
	state->vid = vid;
	state->var_state = SPROM_OPCODE_VAR_STATE_OPEN;

	/* Initialize default variable record values */
	FUNC5(&state->var, 0x0, sizeof(state->var));

	/* Set initial base type */
	if ((error = FUNC4(state, var->type)))
		return (error);

	/* Set default array length */
	if ((error = FUNC3(state, var->nelem)))
		return (error);

	return (0);
}