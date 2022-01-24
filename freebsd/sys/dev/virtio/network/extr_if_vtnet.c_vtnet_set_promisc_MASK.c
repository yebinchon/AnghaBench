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
struct vtnet_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_NET_CTRL_RX_PROMISC ; 
 int FUNC0 (struct vtnet_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC1(struct vtnet_softc *sc, int on)
{

	return (FUNC0(sc, VIRTIO_NET_CTRL_RX_PROMISC, on));
}