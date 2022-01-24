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
struct et_softc {int /*<<< orphan*/  ifp; } ;

/* Variables and functions */
 int FUNC0 (struct et_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct et_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  ET_RXDMA_CTRL ; 
 int ET_RXDMA_CTRL_HALT ; 
 int ET_RXDMA_CTRL_HALTED ; 
 int ET_RXDMA_CTRL_RING1_ENABLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(struct et_softc *sc)
{

	FUNC1(sc, ET_RXDMA_CTRL,
		    ET_RXDMA_CTRL_HALT | ET_RXDMA_CTRL_RING1_ENABLE);

	FUNC2(5);
	if ((FUNC0(sc, ET_RXDMA_CTRL) & ET_RXDMA_CTRL_HALTED) == 0) {
		FUNC3(sc->ifp, "can't stop RX DMA engine\n");
		return (ETIMEDOUT);
	}
	return (0);
}