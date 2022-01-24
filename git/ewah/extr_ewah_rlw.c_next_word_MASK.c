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
struct TYPE_2__ {scalar_t__ literal_word_offset; int /*<<< orphan*/ * word; int /*<<< orphan*/  running_bit; int /*<<< orphan*/  running_len; scalar_t__ literal_words; } ;
struct rlw_iterator {size_t pointer; size_t size; TYPE_1__ rlw; int /*<<< orphan*/ * buffer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC3(struct rlw_iterator *it)
{
	if (it->pointer >= it->size)
		return 0;

	it->rlw.word = &it->buffer[it->pointer];
	it->pointer += FUNC0(it->rlw.word) + 1;

	it->rlw.literal_words = FUNC0(it->rlw.word);
	it->rlw.running_len = FUNC2(it->rlw.word);
	it->rlw.running_bit = FUNC1(it->rlw.word);
	it->rlw.literal_word_offset = 0;

	return 1;
}