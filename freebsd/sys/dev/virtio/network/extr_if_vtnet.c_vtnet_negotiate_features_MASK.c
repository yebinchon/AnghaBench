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
typedef  int uint64_t ;
struct vtnet_softc {int /*<<< orphan*/  vtnet_flags; void* vtnet_features; int /*<<< orphan*/  vtnet_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int VIRTIO_NET_F_CSUM ; 
 int VIRTIO_NET_F_GUEST_CSUM ; 
 int VIRTIO_NET_F_MQ ; 
 int VIRTIO_NET_F_MRG_RXBUF ; 
 int VIRTIO_RING_F_INDIRECT_DESC ; 
 int VTNET_FEATURES ; 
 int /*<<< orphan*/  VTNET_FLAG_LRO_NOMRG ; 
 int VTNET_LRO_FEATURES ; 
 int VTNET_TSO_FEATURES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  vtnet_csum_disable ; 
 int /*<<< orphan*/  vtnet_lro_disable ; 
 int /*<<< orphan*/  vtnet_mq_disable ; 
 int /*<<< orphan*/  vtnet_tso_disable ; 
 scalar_t__ FUNC3 (struct vtnet_softc*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct vtnet_softc *sc)
{
	device_t dev;
	uint64_t mask, features;

	dev = sc->vtnet_dev;
	mask = 0;

	/*
	 * TSO and LRO are only available when their corresponding checksum
	 * offload feature is also negotiated.
	 */
	if (FUNC3(sc, "csum_disable", vtnet_csum_disable)) {
		mask |= VIRTIO_NET_F_CSUM | VIRTIO_NET_F_GUEST_CSUM;
		mask |= VTNET_TSO_FEATURES | VTNET_LRO_FEATURES;
	}
	if (FUNC3(sc, "tso_disable", vtnet_tso_disable))
		mask |= VTNET_TSO_FEATURES;
	if (FUNC3(sc, "lro_disable", vtnet_lro_disable))
		mask |= VTNET_LRO_FEATURES;
#ifndef VTNET_LEGACY_TX
	if (FUNC3(sc, "mq_disable", vtnet_mq_disable))
		mask |= VIRTIO_NET_F_MQ;
#else
	mask |= VIRTIO_NET_F_MQ;
#endif

	features = VTNET_FEATURES & ~mask;
	sc->vtnet_features = FUNC1(dev, features);

	if (FUNC2(dev, VTNET_LRO_FEATURES) &&
	    FUNC2(dev, VIRTIO_NET_F_MRG_RXBUF) == 0) {
		/*
		 * LRO without mergeable buffers requires special care. This
		 * is not ideal because every receive buffer must be large
		 * enough to hold the maximum TCP packet, the Ethernet header,
		 * and the header. This requires up to 34 descriptors with
		 * MCLBYTES clusters. If we do not have indirect descriptors,
		 * LRO is disabled since the virtqueue will not contain very
		 * many receive buffers.
		 */
		if (!FUNC2(dev, VIRTIO_RING_F_INDIRECT_DESC)) {
			FUNC0(dev,
			    "LRO disabled due to both mergeable buffers and "
			    "indirect descriptors not negotiated\n");

			features &= ~VTNET_LRO_FEATURES;
			sc->vtnet_features =
			    FUNC1(dev, features);
		} else
			sc->vtnet_flags |= VTNET_FLAG_LRO_NOMRG;
	}
}