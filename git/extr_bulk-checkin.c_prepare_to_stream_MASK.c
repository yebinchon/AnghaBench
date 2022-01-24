#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct bulk_checkin_state {int /*<<< orphan*/  offset; scalar_t__ f; int /*<<< orphan*/  pack_idx_opts; int /*<<< orphan*/  pack_tmp_name; } ;

/* Variables and functions */
 unsigned int HASH_WRITE_OBJECT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC4(struct bulk_checkin_state *state,
			      unsigned flags)
{
	if (!(flags & HASH_WRITE_OBJECT) || state->f)
		return;

	state->f = FUNC0(&state->pack_tmp_name);
	FUNC2(&state->pack_idx_opts);

	/* Pretend we are going to write only one object */
	state->offset = FUNC3(state->f, 1);
	if (!state->offset)
		FUNC1("unable to write pack header");
}