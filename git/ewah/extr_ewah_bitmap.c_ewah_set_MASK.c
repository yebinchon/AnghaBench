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
struct ewah_bitmap {size_t bit_size; size_t* buffer; int buffer_size; int /*<<< orphan*/  rlw; } ;
typedef  size_t eword_t ;

/* Variables and functions */
 size_t BITS_IN_EWORD ; 
 size_t FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct ewah_bitmap*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ewah_bitmap*,int /*<<< orphan*/ ,size_t const) ; 
 int /*<<< orphan*/  FUNC3 (struct ewah_bitmap*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC9(struct ewah_bitmap *self, size_t i)
{
	const size_t dist =
		FUNC0(i + 1, BITS_IN_EWORD) -
		FUNC0(self->bit_size, BITS_IN_EWORD);

	FUNC4(i >= self->bit_size);

	self->bit_size = i + 1;

	if (dist > 0) {
		if (dist > 1)
			FUNC2(self, 0, dist - 1);

		FUNC3(self, (eword_t)1 << (i % BITS_IN_EWORD));
		return;
	}

	if (FUNC5(self->rlw) == 0) {
		FUNC8(self->rlw,
			FUNC6(self->rlw) - 1);
		FUNC3(self, (eword_t)1 << (i % BITS_IN_EWORD));
		return;
	}

	self->buffer[self->buffer_size - 1] |=
		((eword_t)1 << (i % BITS_IN_EWORD));

	/* check if we just completed a stream of 1s */
	if (self->buffer[self->buffer_size - 1] == (eword_t)(~0)) {
		self->buffer[--self->buffer_size] = 0;
		FUNC7(self->rlw,
			FUNC5(self->rlw) - 1);
		FUNC1(self, 1);
	}
}