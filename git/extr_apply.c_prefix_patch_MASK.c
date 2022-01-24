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
struct patch {int /*<<< orphan*/  old_name; int /*<<< orphan*/  new_name; scalar_t__ is_toplevel_relative; } ;
struct apply_state {int /*<<< orphan*/  prefix; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct apply_state*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct apply_state *state, struct patch *p)
{
	if (!state->prefix || p->is_toplevel_relative)
		return;
	FUNC0(state, &p->new_name);
	FUNC0(state, &p->old_name);
}