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
struct vtmmio_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_MMIO_STATUS ; 
 struct vtmmio_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vtmmio_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint8_t
FUNC2(device_t dev)
{
	struct vtmmio_softc *sc;

	sc = FUNC0(dev);

	return (FUNC1(sc, VIRTIO_MMIO_STATUS));
}