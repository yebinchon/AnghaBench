#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ input; int /*<<< orphan*/  offset; TYPE_1__* layout; } ;
typedef  TYPE_2__ bhnd_sprom_opcode_state ;
struct TYPE_10__ {scalar_t__ opcodes; int /*<<< orphan*/  vid; int /*<<< orphan*/  offset; } ;
typedef  TYPE_3__ bhnd_sprom_opcode_idx_entry ;
struct TYPE_8__ {scalar_t__ bindings_size; scalar_t__ bindings; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 

int
FUNC3(bhnd_sprom_opcode_state *state,
    bhnd_sprom_opcode_idx_entry *entry)
{
	int error;

	FUNC0(entry->opcodes < state->layout->bindings_size,
	    ("index entry references invalid opcode position"));

	/* Reset state */
	if ((error = FUNC1(state)))
		return (error);

	/* Seek to the indexed sprom opcode offset */
	state->input = state->layout->bindings + entry->opcodes;

	/* Restore the indexed sprom data offset and VID */
	state->offset = entry->offset;

	/* Restore the indexed sprom variable ID */
	if ((error = FUNC2(state, entry->vid)))
		return (error);

	return (0);
}