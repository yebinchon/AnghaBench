#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int vmem_size_t ;
typedef  int vmem_addr_t ;
struct TYPE_4__ {int bt_size; int bt_start; } ;
typedef  TYPE_1__ bt_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__ const*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int,int,int) ; 

__attribute__((used)) static int
FUNC4(const bt_t *bt, vmem_size_t size, vmem_size_t align,
    vmem_size_t phase, vmem_size_t nocross, vmem_addr_t minaddr,
    vmem_addr_t maxaddr, vmem_addr_t *addrp)
{
	vmem_addr_t start;
	vmem_addr_t end;

	FUNC1(size > 0);
	FUNC1(bt->bt_size >= size); /* caller's responsibility */

	/*
	 * XXX assumption: vmem_addr_t and vmem_size_t are
	 * unsigned integer of the same size.
	 */

	start = bt->bt_start;
	if (start < minaddr) {
		start = minaddr;
	}
	end = FUNC0(bt);
	if (end > maxaddr)
		end = maxaddr;
	if (start > end) 
		return (ENOMEM);

	start = FUNC2(start - phase, align) + phase;
	if (start < bt->bt_start)
		start += align;
	if (FUNC3(start, start + size - 1, nocross)) {
		FUNC1(align < nocross);
		start = FUNC2(start - phase, nocross) + phase;
	}
	if (start <= end && end - start >= size - 1) {
		FUNC1((start & (align - 1)) == phase);
		FUNC1(!FUNC3(start, start + size - 1, nocross));
		FUNC1(minaddr <= start);
		FUNC1(maxaddr == 0 || start + size - 1 <= maxaddr);
		FUNC1(bt->bt_start <= start);
		FUNC1(FUNC0(bt) - start >= size - 1);
		*addrp = start;

		return (0);
	}
	return (ENOMEM);
}