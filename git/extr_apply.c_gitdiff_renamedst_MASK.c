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
struct patch {int is_rename; int /*<<< orphan*/  new_name; } ;
struct gitdiff_data {scalar_t__ p_value; int /*<<< orphan*/  root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct gitdiff_data *state,
			     const char *line,
			     struct patch *patch)
{
	patch->is_rename = 1;
	FUNC1(patch->new_name);
	patch->new_name = FUNC0(state->root, line, NULL, state->p_value ? state->p_value - 1 : 0, 0);
	return 0;
}