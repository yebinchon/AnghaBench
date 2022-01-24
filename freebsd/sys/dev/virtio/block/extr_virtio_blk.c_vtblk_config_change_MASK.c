#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct vtblk_softc {TYPE_1__* vtblk_disk; } ;
struct virtio_blk_config {int capacity; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int d_mediasize; } ;

/* Variables and functions */
 struct vtblk_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vtblk_softc*,struct virtio_blk_config*) ; 
 int /*<<< orphan*/  FUNC2 (struct vtblk_softc*,int) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct vtblk_softc *sc;
	struct virtio_blk_config blkcfg;
	uint64_t capacity;

	sc = FUNC0(dev);

	FUNC1(sc, &blkcfg);

	/* Capacity is always in 512-byte units. */
	capacity = blkcfg.capacity * 512;

	if (sc->vtblk_disk->d_mediasize != capacity)
		FUNC2(sc, capacity);

	return (0);
}