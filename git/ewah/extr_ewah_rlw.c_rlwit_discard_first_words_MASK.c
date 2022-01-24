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
struct TYPE_2__ {size_t running_len; size_t literal_words; scalar_t__ literal_word_offset; } ;
struct rlw_iterator {TYPE_1__ rlw; scalar_t__ literal_word_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rlw_iterator*) ; 
 scalar_t__ FUNC1 (struct rlw_iterator*) ; 
 scalar_t__ FUNC2 (struct rlw_iterator*) ; 

void FUNC3(struct rlw_iterator *it, size_t x)
{
	while (x > 0) {
		size_t discard;

		if (it->rlw.running_len > x) {
			it->rlw.running_len -= x;
			return;
		}

		x -= it->rlw.running_len;
		it->rlw.running_len = 0;

		discard = (x > it->rlw.literal_words) ? it->rlw.literal_words : x;

		it->literal_word_start += discard;
		it->rlw.literal_words -= discard;
		x -= discard;

		if (x > 0 || FUNC2(it) == 0) {
			if (!FUNC0(it))
				break;

			it->literal_word_start =
				FUNC1(it) + it->rlw.literal_word_offset;
		}
	}
}