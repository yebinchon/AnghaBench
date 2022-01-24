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
typedef  int /*<<< orphan*/  uint64_t ;
struct vmci_queue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (void*,struct vmci_queue const*,int /*<<< orphan*/ ,size_t,int) ; 

int
FUNC2(void *dest, size_t dest_offset,
    const struct vmci_queue *queue, uint64_t queue_offset, size_t size,
    int buf_type, bool can_block)
{

	FUNC0(can_block);

	/*
	 * We ignore dest_offset because dest is really a struct iovec * and
	 * will maintain offset internally.
	 */
	return (FUNC1(dest, queue, queue_offset, size,
	    true));
}