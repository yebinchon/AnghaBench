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
struct ewah_bitmap {int /*<<< orphan*/  bit_size; } ;
typedef  scalar_t__ eword_t ;

/* Variables and functions */
 scalar_t__ BITS_IN_EWORD ; 
 size_t FUNC0 (struct ewah_bitmap*,int) ; 
 size_t FUNC1 (struct ewah_bitmap*,scalar_t__) ; 

size_t FUNC2(struct ewah_bitmap *self, eword_t word)
{
	self->bit_size += BITS_IN_EWORD;

	if (word == 0)
		return FUNC0(self, 0);

	if (word == (eword_t)(~0))
		return FUNC0(self, 1);

	return FUNC1(self, word);
}