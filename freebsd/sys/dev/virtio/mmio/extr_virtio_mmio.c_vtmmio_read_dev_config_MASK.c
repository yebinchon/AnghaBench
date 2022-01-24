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
struct vtmmio_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ bus_size_t ;

/* Variables and functions */
 scalar_t__ VIRTIO_MMIO_CONFIG ; 
 struct vtmmio_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vtmmio_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct vtmmio_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct vtmmio_softc*,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(device_t dev, bus_size_t offset,
    void *dst, int length)
{
	struct vtmmio_softc *sc;
	bus_size_t off;
	uint8_t *d;
	int size;

	sc = FUNC0(dev);
	off = VIRTIO_MMIO_CONFIG + offset;

	for (d = dst; length > 0; d += size, off += size, length -= size) {
#ifdef ALLOW_WORD_ALIGNED_ACCESS
		if (length >= 4) {
			size = 4;
			*(uint32_t *)d = vtmmio_read_config_4(sc, off);
		} else if (length >= 2) {
			size = 2;
			*(uint16_t *)d = vtmmio_read_config_2(sc, off);
		} else
#endif
		{
			size = 1;
			*d = FUNC1(sc, off);
		}
	}
}