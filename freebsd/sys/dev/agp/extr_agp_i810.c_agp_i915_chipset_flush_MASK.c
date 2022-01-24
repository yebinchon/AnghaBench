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
typedef  int uint32_t ;
struct agp_i810_softc {scalar_t__ sc_flush_page_vaddr; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct agp_i810_softc* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(device_t dev)
{
	struct agp_i810_softc *sc;

	sc = FUNC0(dev);
	*(uint32_t *)sc->sc_flush_page_vaddr = 1;
}