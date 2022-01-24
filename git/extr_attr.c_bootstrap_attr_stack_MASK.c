#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct index_state {int dummy; } ;
struct attr_stack {int dummy; } ;
struct TYPE_2__ {scalar_t__ have_repository; } ;

/* Variables and functions */
 int /*<<< orphan*/  GITATTRIBUTES_FILE ; 
 int /*<<< orphan*/  builtin_attr ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct attr_stack**,struct attr_stack*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct attr_stack* FUNC5 (struct index_state const*,int /*<<< orphan*/ ,int) ; 
 struct attr_stack* FUNC6 (int /*<<< orphan*/ ) ; 
 struct attr_stack* FUNC7 (scalar_t__,int) ; 
 TYPE_1__* startup_info ; 
 struct attr_stack* FUNC8 (int,int) ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(const struct index_state *istate,
				 struct attr_stack **stack)
{
	struct attr_stack *e;

	if (*stack)
		return;

	/* builtin frame */
	e = FUNC6(builtin_attr);
	FUNC4(stack, e, NULL, 0);

	/* system-wide frame */
	if (FUNC1()) {
		e = FUNC7(FUNC2(), 1);
		FUNC4(stack, e, NULL, 0);
	}

	/* home directory */
	if (FUNC0()) {
		e = FUNC7(FUNC0(), 1);
		FUNC4(stack, e, NULL, 0);
	}

	/* root directory */
	e = FUNC5(istate, GITATTRIBUTES_FILE, 1);
	FUNC4(stack, e, FUNC9(""), 0);

	/* info frame */
	if (startup_info->have_repository)
		e = FUNC7(FUNC3(), 1);
	else
		e = NULL;
	if (!e)
		e = FUNC8(1, sizeof(struct attr_stack));
	FUNC4(stack, e, NULL, 0);
}