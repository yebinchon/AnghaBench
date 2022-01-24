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
typedef  size_t eword_t ;

/* Variables and functions */
 size_t RLW_LARGEST_RUNNING_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct ewah_bitmap*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (size_t,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC8(struct ewah_bitmap *self, int v, size_t number)
{
	size_t added = 0;
	eword_t runlen, can_add;

	if (FUNC3(self->rlw) != v && FUNC7(self->rlw) == 0) {
		FUNC5(self->rlw, v);
	} else if (FUNC2(self->rlw) != 0 ||
			FUNC3(self->rlw) != v) {
		FUNC0(self, 0);
		if (v) FUNC5(self->rlw, v);
		added++;
	}

	runlen = FUNC4(self->rlw);
	can_add = FUNC1(number, RLW_LARGEST_RUNNING_COUNT - runlen);

	FUNC6(self->rlw, runlen + can_add);
	number -= can_add;

	while (number >= RLW_LARGEST_RUNNING_COUNT) {
		FUNC0(self, 0);
		added++;
		if (v) FUNC5(self->rlw, v);
		FUNC6(self->rlw, RLW_LARGEST_RUNNING_COUNT);
		number -= RLW_LARGEST_RUNNING_COUNT;
	}

	if (number > 0) {
		FUNC0(self, 0);
		added++;

		if (v) FUNC5(self->rlw, v);
		FUNC6(self->rlw, number);
	}

	return added;
}