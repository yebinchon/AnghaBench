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
typedef  int uint32_t ;
struct virtio_blk_config {void* blk_size; void* seg_max; scalar_t__ size_max; int /*<<< orphan*/  capacity; } ;
struct beri_vtblk_softc {int /*<<< orphan*/  ident; TYPE_1__* mdio; struct virtio_blk_config* cfg; } ;
struct TYPE_2__ {int md_mediasize; } ;

/* Variables and functions */
 int DEV_BSIZE ; 
 int NUM_DESCS ; 
 int VIRTIO_BLK_F_BLK_SIZE ; 
 int VIRTIO_BLK_F_SEG_MAX ; 
 int VIRTIO_ID_BLOCK ; 
 scalar_t__ VIRTIO_MMIO_CONFIG ; 
 scalar_t__ VIRTIO_MMIO_DEVICE_ID ; 
 scalar_t__ VIRTIO_MMIO_HOST_FEATURES ; 
 scalar_t__ VIRTIO_MMIO_QUEUE_NUM_MAX ; 
 int VIRTIO_RING_F_INDIRECT_DESC ; 
 int VTBLK_MAXSEGS ; 
 int /*<<< orphan*/  FUNC0 (struct beri_vtblk_softc*,scalar_t__,int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC4(struct beri_vtblk_softc *sc)
{
	struct virtio_blk_config *cfg;
	uint32_t *s;
	int reg;
	int i;

	/* Specify that we provide block device */
	reg = FUNC1(VIRTIO_ID_BLOCK);
	FUNC0(sc, VIRTIO_MMIO_DEVICE_ID, reg);

	/* Queue size */
	reg = FUNC1(NUM_DESCS);
	FUNC0(sc, VIRTIO_MMIO_QUEUE_NUM_MAX, reg);

	/* Our features */
	reg = FUNC1(VIRTIO_RING_F_INDIRECT_DESC
	    | VIRTIO_BLK_F_BLK_SIZE
	    | VIRTIO_BLK_F_SEG_MAX);
	FUNC0(sc, VIRTIO_MMIO_HOST_FEATURES, reg);

	cfg = sc->cfg;
	cfg->capacity = FUNC2(sc->mdio->md_mediasize / DEV_BSIZE);
	cfg->size_max = 0; /* not negotiated */
	cfg->seg_max = FUNC1(VTBLK_MAXSEGS);
	cfg->blk_size = FUNC1(DEV_BSIZE);

	s = (uint32_t *)cfg;

	for (i = 0; i < sizeof(struct virtio_blk_config); i+=4) {
		FUNC0(sc, VIRTIO_MMIO_CONFIG + i, *s);
		s+=1;
	}

	FUNC3(sc->ident, "Virtio block backend", sizeof(sc->ident));

	return (0);
}