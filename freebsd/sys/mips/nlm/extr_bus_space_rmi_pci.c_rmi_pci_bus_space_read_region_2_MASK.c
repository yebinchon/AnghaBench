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
typedef  int /*<<< orphan*/  u_int16_t ;
typedef  scalar_t__ bus_space_handle_t ;
typedef  scalar_t__ bus_size_t ;
typedef  scalar_t__ bus_addr_t ;

/* Variables and functions */

void
FUNC0(void *t, bus_space_handle_t bsh,
    bus_size_t offset, u_int16_t * addr, size_t count)
{
	bus_addr_t baddr = bsh + offset;

	while (count--) {
		*addr++ = (*(volatile u_int16_t *)(baddr));
		baddr += 2;
	}
}