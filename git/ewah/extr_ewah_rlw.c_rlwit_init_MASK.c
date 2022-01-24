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
struct TYPE_2__ {scalar_t__ literal_word_offset; } ;
struct rlw_iterator {TYPE_1__ rlw; scalar_t__ literal_word_start; scalar_t__ pointer; int /*<<< orphan*/  size; int /*<<< orphan*/  buffer; } ;
struct ewah_bitmap {int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rlw_iterator*) ; 
 scalar_t__ FUNC1 (struct rlw_iterator*) ; 

void FUNC2(struct rlw_iterator *it, struct ewah_bitmap *from_ewah)
{
	it->buffer = from_ewah->buffer;
	it->size = from_ewah->buffer_size;
	it->pointer = 0;

	FUNC0(it);

	it->literal_word_start = FUNC1(it) +
		it->rlw.literal_word_offset;
}