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
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/ * bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;
typedef  int /*<<< orphan*/  bus_size_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  memmap_bus ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC2(phandle_t dev, int regno, bus_space_tag_t *tag,
    bus_space_handle_t *handle, bus_size_t *sz)
{
	bus_addr_t addr;
	bus_size_t size;
	int err;

	err = FUNC1(dev, regno, &addr, &size, NULL);
	if (err != 0)
		return (err);

	*tag = &memmap_bus;

	if (sz != NULL)
		*sz = size;

	return (FUNC0(*tag, addr, size, 0, handle));
}