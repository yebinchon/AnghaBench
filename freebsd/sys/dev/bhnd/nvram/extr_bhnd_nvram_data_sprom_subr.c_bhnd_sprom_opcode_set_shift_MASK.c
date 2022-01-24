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
typedef  int /*<<< orphan*/  int8_t ;
struct TYPE_5__ {int /*<<< orphan*/  shift; } ;
struct TYPE_6__ {scalar_t__ var_state; TYPE_1__ var; } ;
typedef  TYPE_2__ bhnd_sprom_opcode_state ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ SPROM_OPCODE_VAR_STATE_OPEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 

__attribute__((used)) static inline int
FUNC1(bhnd_sprom_opcode_state *state, int8_t shift)
{
	if (state->var_state != SPROM_OPCODE_VAR_STATE_OPEN) {
		FUNC0(state, "no open variable definition\n");
		return (EINVAL);
	}

	state->var.shift = shift;
	return (0);
}