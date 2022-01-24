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
struct TYPE_2__ {scalar_t__ running_len; int /*<<< orphan*/  literal_words; int /*<<< orphan*/  running_bit; } ;
struct rlw_iterator {int* buffer; size_t literal_word_start; TYPE_1__ rlw; } ;
struct ewah_bitmap {int /*<<< orphan*/  bit_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ewah_bitmap*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ewah_bitmap*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rlw_iterator*,size_t) ; 
 size_t FUNC5 (struct rlw_iterator*,struct ewah_bitmap*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rlw_iterator*,struct ewah_bitmap*) ; 
 scalar_t__ FUNC7 (struct rlw_iterator*) ; 

void FUNC8(
	struct ewah_bitmap *ewah_i,
	struct ewah_bitmap *ewah_j,
	struct ewah_bitmap *out)
{
	struct rlw_iterator rlw_i;
	struct rlw_iterator rlw_j;
	size_t literals;

	FUNC6(&rlw_i, ewah_i);
	FUNC6(&rlw_j, ewah_j);

	while (FUNC7(&rlw_i) > 0 && FUNC7(&rlw_j) > 0) {
		while (rlw_i.rlw.running_len > 0 || rlw_j.rlw.running_len > 0) {
			struct rlw_iterator *prey, *predator;
			size_t index;
			int negate_words;

			if (rlw_i.rlw.running_len < rlw_j.rlw.running_len) {
				prey = &rlw_i;
				predator = &rlw_j;
			} else {
				prey = &rlw_j;
				predator = &rlw_i;
			}

			negate_words = !!predator->rlw.running_bit;
			index = FUNC5(prey, out,
				predator->rlw.running_len, negate_words);

			FUNC1(out, negate_words,
				predator->rlw.running_len - index);

			FUNC4(predator,
				predator->rlw.running_len);
		}

		literals = FUNC3(
			rlw_i.rlw.literal_words,
			rlw_j.rlw.literal_words);

		if (literals) {
			size_t k;

			for (k = 0; k < literals; ++k) {
				FUNC0(out,
					rlw_i.buffer[rlw_i.literal_word_start + k] ^
					rlw_j.buffer[rlw_j.literal_word_start + k]
				);
			}

			FUNC4(&rlw_i, literals);
			FUNC4(&rlw_j, literals);
		}
	}

	if (FUNC7(&rlw_i) > 0)
		FUNC5(&rlw_i, out, ~0, 0);
	else
		FUNC5(&rlw_j, out, ~0, 0);

	out->bit_size = FUNC2(ewah_i->bit_size, ewah_j->bit_size);
}