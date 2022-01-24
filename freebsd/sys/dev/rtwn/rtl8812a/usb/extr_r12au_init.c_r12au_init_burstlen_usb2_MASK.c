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
typedef  int uint8_t ;
struct rtwn_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R12A_BURST_CNT ; 
 int /*<<< orphan*/  R12A_BURST_SZ ; 
 int /*<<< orphan*/  R12A_BURST_SZ_M ; 
 int R12A_BURST_SZ_USB1 ; 
 int R12A_BURST_SZ_USB2 ; 
 int const R12A_DMA_MODE ; 
 int /*<<< orphan*/  R12A_RXDMA_PRO ; 
 int /*<<< orphan*/  R92C_USB_INFO ; 
 int const FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct rtwn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const) ; 

void
FUNC3(struct rtwn_softc *sc)
{
	const uint8_t dma_count = R12A_DMA_MODE | FUNC0(R12A_BURST_CNT, 3);

	if ((FUNC1(sc, R92C_USB_INFO) & 0x30) == 0) {
		/* Set burst packet length to 512 B. */
		FUNC2(sc, R12A_RXDMA_PRO, R12A_BURST_SZ_M,
		    dma_count | FUNC0(R12A_BURST_SZ, R12A_BURST_SZ_USB2));
	} else {
		/* Set burst packet length to 64 B. */
		FUNC2(sc, R12A_RXDMA_PRO, R12A_BURST_SZ_M,
		    dma_count | FUNC0(R12A_BURST_SZ, R12A_BURST_SZ_USB1));
	}
}