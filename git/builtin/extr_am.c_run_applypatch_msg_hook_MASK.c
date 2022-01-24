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
struct am_state {int /*<<< orphan*/  msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct am_state*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct am_state*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct am_state *state)
{
	int ret;

	FUNC3(state->msg);
	ret = FUNC6(NULL, "applypatch-msg", FUNC2(state, "final-commit"), NULL);

	if (!ret) {
		FUNC0(state->msg);
		if (FUNC5(state) < 0)
			FUNC4(FUNC1("'%s' was deleted by the applypatch-msg hook"),
				FUNC2(state, "final-commit"));
	}

	return ret;
}