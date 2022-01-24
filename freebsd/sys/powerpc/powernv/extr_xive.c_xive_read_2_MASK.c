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
typedef  int /*<<< orphan*/  uint16_t ;
struct xive_softc {scalar_t__ sc_offset; int /*<<< orphan*/  sc_mem; } ;
typedef  scalar_t__ bus_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static uint16_t
FUNC1(struct xive_softc *sc, bus_size_t offset)
{

	return (FUNC0(sc->sc_mem, sc->sc_offset + offset));
}