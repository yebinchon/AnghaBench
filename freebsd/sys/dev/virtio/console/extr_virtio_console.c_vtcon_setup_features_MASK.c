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
struct vtcon_softc {int /*<<< orphan*/  vtcon_flags; int /*<<< orphan*/  vtcon_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_CONSOLE_F_MULTIPORT ; 
 int /*<<< orphan*/  VIRTIO_CONSOLE_F_SIZE ; 
 int /*<<< orphan*/  VTCON_FLAG_MULTIPORT ; 
 int /*<<< orphan*/  VTCON_FLAG_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vtcon_softc*) ; 

__attribute__((used)) static void
FUNC2(struct vtcon_softc *sc)
{
	device_t dev;

	dev = sc->vtcon_dev;

	FUNC1(sc);

	if (FUNC0(dev, VIRTIO_CONSOLE_F_SIZE))
		sc->vtcon_flags |= VTCON_FLAG_SIZE;
	if (FUNC0(dev, VIRTIO_CONSOLE_F_MULTIPORT))
		sc->vtcon_flags |= VTCON_FLAG_MULTIPORT;
}