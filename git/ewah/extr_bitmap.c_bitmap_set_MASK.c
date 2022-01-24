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
struct bitmap {size_t word_alloc; int /*<<< orphan*/ * words; } ;
typedef  int /*<<< orphan*/  eword_t ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,size_t) ; 

void FUNC4(struct bitmap *self, size_t pos)
{
	size_t block = FUNC0(pos);

	if (block >= self->word_alloc) {
		size_t old_size = self->word_alloc;
		self->word_alloc = block * 2;
		FUNC2(self->words, self->word_alloc);
		FUNC3(self->words + old_size, 0x0,
			(self->word_alloc - old_size) * sizeof(eword_t));
	}

	self->words[block] |= FUNC1(pos);
}