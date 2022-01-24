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
typedef  int /*<<< orphan*/  uint8_t ;
struct io_buffer {size_t capacity; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t FUNC1 (struct io_buffer*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void
FUNC3(struct io_buffer *io, size_t newsize)
{
	uint8_t *new_data;
	size_t avail, new_cap;

	avail = FUNC1(io);
	if (newsize <= avail)
		return;

	new_cap = io->capacity + (newsize - avail);
	new_data = FUNC2(io->data, new_cap);
	if (new_data == NULL)
		FUNC0(1, "Failed to grow GDB I/O buffer");
	io->data = new_data;
	io->capacity = new_cap;
}