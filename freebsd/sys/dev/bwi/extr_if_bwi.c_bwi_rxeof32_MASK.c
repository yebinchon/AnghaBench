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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ rdata_txrx_ctrl; } ;
struct bwi_softc {TYPE_1__ sc_rx_rdata; } ;
struct bwi_desc32 {int dummy; } ;

/* Variables and functions */
 scalar_t__ BWI_RX32_INDEX ; 
 scalar_t__ BWI_RX32_STATUS ; 
 int /*<<< orphan*/  BWI_RX32_STATUS_INDEX_MASK ; 
 scalar_t__ FUNC0 (struct bwi_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_softc*,scalar_t__,int) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct bwi_softc*,int) ; 

__attribute__((used)) static int
FUNC4(struct bwi_softc *sc)
{
	uint32_t val, rx_ctrl;
	int end_idx, rx_data;

	rx_ctrl = sc->sc_rx_rdata.rdata_txrx_ctrl;

	val = FUNC0(sc, rx_ctrl + BWI_RX32_STATUS);
	end_idx = FUNC2(val, BWI_RX32_STATUS_INDEX_MASK) /
		  sizeof(struct bwi_desc32);

	rx_data = FUNC3(sc, end_idx);
	if (rx_data >= 0) {
		FUNC1(sc, rx_ctrl + BWI_RX32_INDEX,
			    end_idx * sizeof(struct bwi_desc32));
	}
	return rx_data;
}