#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  bge_rx_std_ring_map; int /*<<< orphan*/  bge_rx_std_ring_tag; } ;
struct TYPE_4__ {int /*<<< orphan*/  bge_rx_std_ring; } ;
struct bge_softc {scalar_t__ bge_std; TYPE_1__ bge_cdata; TYPE_2__ bge_ldata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  BGE_MBX_RX_STD_PROD_LO ; 
 int BGE_STD_RX_RING_CNT ; 
 int /*<<< orphan*/  BGE_STD_RX_RING_SZ ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int FUNC1 (struct bge_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct bge_softc *sc)
{
	int error, i;

	FUNC4(sc->bge_ldata.bge_rx_std_ring, BGE_STD_RX_RING_SZ);
	sc->bge_std = 0;
	for (i = 0; i < BGE_STD_RX_RING_CNT; i++) {
		if ((error = FUNC1(sc, i)) != 0)
			return (error);
		FUNC0(sc->bge_std, BGE_STD_RX_RING_CNT);
	}

	FUNC3(sc->bge_cdata.bge_rx_std_ring_tag,
	    sc->bge_cdata.bge_rx_std_ring_map, BUS_DMASYNC_PREWRITE);

	sc->bge_std = 0;
	FUNC2(sc, BGE_MBX_RX_STD_PROD_LO, BGE_STD_RX_RING_CNT - 1);

	return (0);
}