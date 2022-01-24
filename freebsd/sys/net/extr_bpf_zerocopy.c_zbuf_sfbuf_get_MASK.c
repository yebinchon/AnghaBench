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
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct vm_map {int dummy; } ;
struct sf_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SFB_NOWAIT ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 struct sf_buf* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct vm_map*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sf_buf *
FUNC3(struct vm_map *map, vm_offset_t uaddr)
{
	struct sf_buf *sf;
	vm_page_t pp;

	if (FUNC1(map, uaddr, PAGE_SIZE, VM_PROT_READ |
	    VM_PROT_WRITE, &pp, 1) < 0)
		return (NULL);
	sf = FUNC0(pp, SFB_NOWAIT);
	if (sf == NULL) {
		FUNC2(pp);
		return (NULL);
	}
	return (sf);
}