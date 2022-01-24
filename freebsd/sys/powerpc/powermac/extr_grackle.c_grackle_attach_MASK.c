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
typedef  void* vm_offset_t ;
struct grackle_softc {void* sc_data; void* sc_addr; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  GRACKLE_ADDR ; 
 int /*<<< orphan*/  GRACKLE_DATA ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct grackle_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct		grackle_softc *sc;

	sc = FUNC0(dev);

	/*
	 * The Grackle PCI config addr/data registers are actually in
	 * PCI space, but since they are needed to actually probe the
	 * PCI bus, use the fact that they are also available directly
	 * on the processor bus and map them
	 */
	sc->sc_addr = (vm_offset_t)FUNC2(GRACKLE_ADDR, PAGE_SIZE);
	sc->sc_data = (vm_offset_t)FUNC2(GRACKLE_DATA, PAGE_SIZE);

	return (FUNC1(dev));
}