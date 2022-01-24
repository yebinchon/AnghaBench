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
struct patch {int /*<<< orphan*/  old_name; scalar_t__ is_rename; scalar_t__ is_copy; } ;
struct apply_state {int dummy; } ;

/* Variables and functions */
 struct patch* FUNC0 (struct apply_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct patch*) ; 
 scalar_t__ FUNC2 (struct patch*) ; 

__attribute__((used)) static struct patch *FUNC3(struct apply_state *state,
				    struct patch *patch,
				    int *gone)
{
	struct patch *previous;

	*gone = 0;
	if (patch->is_copy || patch->is_rename)
		return NULL; /* "git" patches do not depend on the order */

	previous = FUNC0(state, patch->old_name);
	if (!previous)
		return NULL;

	if (FUNC1(previous))
		return NULL; /* the deletion hasn't happened yet */

	if (FUNC2(previous))
		*gone = 1;

	return previous;
}