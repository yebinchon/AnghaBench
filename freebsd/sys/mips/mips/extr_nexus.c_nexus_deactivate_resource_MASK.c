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
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ bus_space_handle_t ;
typedef  scalar_t__ bus_size_t ;

/* Variables and functions */
 int SYS_RES_IRQ ; 
 int SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct resource*) ; 
 int FUNC2 (struct resource*) ; 
 scalar_t__ FUNC3 (struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*) ; 
 scalar_t__ FUNC5 (struct resource*) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(device_t bus, device_t child, int type, int rid,
			  struct resource *r)
{
	bus_space_handle_t vaddr;
	bus_size_t psize;

	vaddr = FUNC3(r);

	if (type == SYS_RES_MEMORY && vaddr != 0) {
		psize = (bus_size_t)FUNC5(r);
		FUNC0(FUNC4(r), vaddr, psize);
		FUNC7(r, NULL);
		FUNC6(r, 0);
	} else if (type == SYS_RES_IRQ) {
#ifdef INTRNG
		mips_pic_deactivate_intr(child, r);
#endif
	}

	return (FUNC2(r));
}