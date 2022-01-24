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
struct bge_softc {scalar_t__ bge_asf_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  BGE_FW_CMD_PAUSE ; 
 int BGE_RX_CPU_DRV_EVENT ; 
 int /*<<< orphan*/  BGE_RX_CPU_EVENT ; 
 int /*<<< orphan*/  BGE_SRAM_FW_CMD_MB ; 
 int FUNC0 (struct bge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct bge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bge_softc *sc)
{
	int i;

	if (sc->bge_asf_mode) {
		FUNC3(sc, BGE_SRAM_FW_CMD_MB, BGE_FW_CMD_PAUSE);
		FUNC1(sc, BGE_RX_CPU_EVENT,
		    FUNC0(sc, BGE_RX_CPU_EVENT) | BGE_RX_CPU_DRV_EVENT);

		for (i = 0; i < 100; i++ ) {
			if (!(FUNC0(sc, BGE_RX_CPU_EVENT) &
			    BGE_RX_CPU_DRV_EVENT))
				break;
			FUNC2(10);
		}
	}
}