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
struct ewah_bitmap {size_t buffer_size; int* buffer; } ;
typedef  int eword_t ;

/* Variables and functions */
 size_t BITS_IN_EWORD ; 
 size_t FUNC0 (int*) ; 
 scalar_t__ FUNC1 (int*) ; 
 size_t FUNC2 (int*) ; 

void FUNC3(struct ewah_bitmap *self, void (*callback)(size_t, void*), void *payload)
{
	size_t pos = 0;
	size_t pointer = 0;
	size_t k;

	while (pointer < self->buffer_size) {
		eword_t *word = &self->buffer[pointer];

		if (FUNC1(word)) {
			size_t len = FUNC2(word) * BITS_IN_EWORD;
			for (k = 0; k < len; ++k, ++pos)
				callback(pos, payload);
		} else {
			pos += FUNC2(word) * BITS_IN_EWORD;
		}

		++pointer;

		for (k = 0; k < FUNC0(word); ++k) {
			int c;

			/* todo: zero count optimization */
			for (c = 0; c < BITS_IN_EWORD; ++c, ++pos) {
				if ((self->buffer[pointer] & ((eword_t)1 << c)) != 0)
					callback(pos, payload);
			}

			++pointer;
		}
	}
}