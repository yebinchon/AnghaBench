#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct bhnd_sprom_layout {size_t num_vars; } ;
typedef  int /*<<< orphan*/  idx ;
struct TYPE_7__ {size_t num_idx; int /*<<< orphan*/ * idx; struct bhnd_sprom_layout const* layout; } ;
typedef  TYPE_1__ bhnd_sprom_opcode_state ;
typedef  int /*<<< orphan*/  bhnd_sprom_opcode_idx_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/ * FUNC2 (size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  bhnd_sprom_opcode_sort_idx ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ) ; 

int
FUNC8(bhnd_sprom_opcode_state *state,
    const struct bhnd_sprom_layout *layout)
{
	bhnd_sprom_opcode_idx_entry	*idx;
	size_t				 num_vars, num_idx;
	int				 error;

	idx = NULL;

	state->layout = layout;
	state->idx = NULL;
	state->num_idx = 0;

	/* Initialize interpretation state */
	if ((error = FUNC6(state)))
		return (error);

	/* Allocate and populate our opcode index */
	num_idx = state->layout->num_vars;
	idx = FUNC2(num_idx, sizeof(*idx));
	if (idx == NULL)
		return (ENOMEM);

	for (num_vars = 0; num_vars < num_idx; num_vars++) {
		/* Seek to next entry */
		if ((error = FUNC5(state))) {
			FUNC1(state, "error reading expected variable "
			    "entry: %d\n", error);
			FUNC3(idx);
			return (error);
		}

		/* Record entry state in our index */
		error = FUNC4(state, &idx[num_vars]);
		if (error) {
			FUNC1(state, "error initializing index for "
			    "entry: %d\n", error);
			FUNC3(idx);
			return (error);
		}
	}

	/* Should have reached end of binding table; next read must return
	 * ENOENT */
	if ((error = FUNC5(state)) != ENOENT) {
		FUNC0("expected EOF parsing binding table: %d\n", error);
		FUNC3(idx);
		return (ENXIO);
	}

	/* Reset interpretation state */
	if ((error = FUNC6(state))) {
		FUNC3(idx);
		return (error);
	}

	/* Make index available to opcode state evaluation */
        FUNC7(idx, num_idx, sizeof(idx[0]), bhnd_sprom_opcode_sort_idx);

	state->idx = idx;
	state->num_idx = num_idx;

	return (0);
}