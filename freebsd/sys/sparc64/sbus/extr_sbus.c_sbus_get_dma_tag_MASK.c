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
struct sbus_softc {int /*<<< orphan*/  sc_cdmatag; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;

/* Variables and functions */
 struct sbus_softc* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bus_dma_tag_t
FUNC1(device_t bus, device_t child)
{
	struct sbus_softc *sc;

	sc = FUNC0(bus);
	return (sc->sc_cdmatag);
}