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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct vtpci_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ bus_size_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vtpci_softc*) ; 
 struct vtpci_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vtpci_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct vtpci_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct vtpci_softc*,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(device_t dev, bus_size_t offset,
    void *dst, int length)
{
	struct vtpci_softc *sc;
	bus_size_t off;
	uint8_t *d;
	int size;

	sc = FUNC1(dev);
	off = FUNC0(sc) + offset;

	for (d = dst; length > 0; d += size, off += size, length -= size) {
		if (length >= 4) {
			size = 4;
			*(uint32_t *)d = FUNC4(sc, off);
		} else if (length >= 2) {
			size = 2;
			*(uint16_t *)d = FUNC3(sc, off);
		} else {
			size = 1;
			*d = FUNC2(sc, off);
		}
	}
}