#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct bhnd_nvram_vardefn {int nelem; int /*<<< orphan*/  type; } ;
struct TYPE_5__ {int nelem; } ;
struct TYPE_6__ {scalar_t__ var_state; TYPE_1__ var; int /*<<< orphan*/  vid; } ;
typedef  TYPE_2__ bhnd_sprom_opcode_state ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 scalar_t__ SPROM_OPCODE_VAR_STATE_OPEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,...) ; 
 struct bhnd_nvram_vardefn* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(bhnd_sprom_opcode_state *state, uint8_t nelem)
{
	const struct bhnd_nvram_vardefn	*var;

	/* Must have a defined variable */
	if (state->var_state != SPROM_OPCODE_VAR_STATE_OPEN) {
		FUNC0(state, "array length set without open variable "
		    "state");
		return (EINVAL);
	}

	/* Locate the actual variable definition */
	if ((var = FUNC1(state->vid)) == NULL) {
		FUNC0(state, "unknown variable ID: %zu\n", state->vid);
		return (EINVAL);
	}

	/* Must be greater than zero */
	if (nelem == 0) {
		FUNC0(state, "invalid nelem: %hhu\n", nelem);
		return (EINVAL);
	}

	/* If the variable is not an array-typed value, the array length
	 * must be 1 */
	if (!FUNC2(var->type) && nelem != 1) {
		FUNC0(state, "nelem %hhu on non-array %zu\n", nelem,
		    state->vid);
		return (ENXIO);
	}
	
	/* Cannot exceed the variable's defined array length */
	if (nelem > var->nelem) {
		FUNC0(state, "nelem %hhu exceeds %zu length %hhu\n",
		    nelem, state->vid, var->nelem);
		return (ENXIO);
	}

	/* Valid length; update state */
	state->var.nelem = nelem;

	return (0);
}