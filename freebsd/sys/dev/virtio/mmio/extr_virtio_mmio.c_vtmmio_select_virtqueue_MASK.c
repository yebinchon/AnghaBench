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
struct vtmmio_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_MMIO_QUEUE_SEL ; 
 int /*<<< orphan*/  FUNC0 (struct vtmmio_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(struct vtmmio_softc *sc, int idx)
{

	FUNC0(sc, VIRTIO_MMIO_QUEUE_SEL, idx);
}