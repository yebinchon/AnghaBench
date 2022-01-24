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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

size_t FUNC1(struct bitmap *self)
{
	size_t i, count = 0;

	for (i = 0; i < self->word_alloc; ++i)
		count += FUNC0(self->words[i]);

	return count;
}