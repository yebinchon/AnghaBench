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
struct block {int length; void* data; void* mask; } ;

/* Variables and functions */
 int BLOCK_SIZE ; 
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct block* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct block*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static struct block *
FUNC3(void)
{
	struct block *pb;
	size_t size = sizeof(*pb) + (2 * BLOCK_SIZE);

	pb = FUNC1(size);
	if (pb == NULL)
		FUNC0(EX_SOFTWARE, "Out of memory");
	FUNC2(pb, 0, size);
	pb->data = (void *)(pb + 1);
	pb->mask = pb->data + BLOCK_SIZE;
	pb->length = BLOCK_SIZE;
	return (pb);
}