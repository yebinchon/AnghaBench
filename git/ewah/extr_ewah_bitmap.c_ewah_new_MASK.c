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
struct ewah_bitmap {int alloc_size; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ewah_bitmap*) ; 
 struct ewah_bitmap* FUNC2 (int) ; 

struct ewah_bitmap *FUNC3(void)
{
	struct ewah_bitmap *self;

	self = FUNC2(sizeof(struct ewah_bitmap));
	self->alloc_size = 32;
	FUNC0(self->buffer, self->alloc_size);

	FUNC1(self);
	return self;
}