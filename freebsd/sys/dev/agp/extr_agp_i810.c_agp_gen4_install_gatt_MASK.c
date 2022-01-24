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
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ const vm_offset_t ;
struct agp_i810_softc {int /*<<< orphan*/ * sc_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  VM_MEMATTR_WRITE_COMBINING ; 
 int /*<<< orphan*/  FUNC0 (struct agp_i810_softc*) ; 
 struct agp_i810_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__ const,scalar_t__ const,int /*<<< orphan*/ ) ; 
 scalar_t__ const FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev, const vm_size_t gtt_offset)
{
	struct agp_i810_softc *sc;

	sc = FUNC1(dev);
	FUNC2((vm_offset_t)FUNC4(sc->sc_res[0]) +
	    gtt_offset, FUNC3(sc->sc_res[0]) - gtt_offset,
	    VM_MEMATTR_WRITE_COMBINING);
	FUNC0(sc);
	return (0);
}