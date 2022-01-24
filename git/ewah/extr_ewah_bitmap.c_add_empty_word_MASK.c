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
struct ewah_bitmap {int /*<<< orphan*/  rlw; } ;
typedef  scalar_t__ eword_t ;

/* Variables and functions */
 scalar_t__ RLW_LARGEST_RUNNING_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ewah_bitmap*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static size_t FUNC7(struct ewah_bitmap *self, int v)
{
	int no_literal = (FUNC2(self->rlw) == 0);
	eword_t run_len = FUNC4(self->rlw);

	if (no_literal && run_len == 0) {
		FUNC5(self->rlw, v);
		FUNC0(FUNC3(self->rlw) == v);
	}

	if (no_literal && FUNC3(self->rlw) == v &&
		run_len < RLW_LARGEST_RUNNING_COUNT) {
		FUNC6(self->rlw, run_len + 1);
		FUNC0(FUNC4(self->rlw) == run_len + 1);
		return 0;
	} else {
		FUNC1(self, 0);

		FUNC0(FUNC4(self->rlw) == 0);
		FUNC0(FUNC3(self->rlw) == 0);
		FUNC0(FUNC2(self->rlw) == 0);

		FUNC5(self->rlw, v);
		FUNC0(FUNC3(self->rlw) == v);

		FUNC6(self->rlw, 1);
		FUNC0(FUNC4(self->rlw) == 1);
		FUNC0(FUNC2(self->rlw) == 0);
		return 1;
	}
}