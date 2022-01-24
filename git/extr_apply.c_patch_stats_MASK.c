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
struct patch {int lines_added; int lines_deleted; scalar_t__ new_name; scalar_t__ old_name; } ;
struct apply_state {int max_change; int max_len; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct apply_state *state, struct patch *patch)
{
	int lines = patch->lines_added + patch->lines_deleted;

	if (lines > state->max_change)
		state->max_change = lines;
	if (patch->old_name) {
		int len = FUNC0(patch->old_name, NULL, NULL, 0);
		if (!len)
			len = FUNC1(patch->old_name);
		if (len > state->max_len)
			state->max_len = len;
	}
	if (patch->new_name) {
		int len = FUNC0(patch->new_name, NULL, NULL, 0);
		if (!len)
			len = FUNC1(patch->new_name);
		if (len > state->max_len)
			state->max_len = len;
	}
}