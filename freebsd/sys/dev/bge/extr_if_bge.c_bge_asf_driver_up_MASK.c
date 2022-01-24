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
struct bge_softc {int bge_asf_mode; int bge_asf_count; } ;

/* Variables and functions */
 int ASF_STACKUP ; 
 int BGE_FW_CMD_DRV_ALIVE ; 
 int BGE_FW_HB_TIMEOUT_SEC ; 
 int BGE_RX_CPU_DRV_EVENT ; 
 int /*<<< orphan*/  BGE_RX_CPU_EVENT ; 
 int /*<<< orphan*/  BGE_SRAM_FW_CMD_DATA_MB ; 
 int /*<<< orphan*/  BGE_SRAM_FW_CMD_LEN_MB ; 
 int /*<<< orphan*/  BGE_SRAM_FW_CMD_MB ; 
 int FUNC0 (struct bge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bge_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct bge_softc *sc)
{
	if (sc->bge_asf_mode & ASF_STACKUP) {
		/* Send ASF heartbeat aprox. every 2s */
		if (sc->bge_asf_count)
			sc->bge_asf_count --;
		else {
			sc->bge_asf_count = 2;
			FUNC2(sc, BGE_SRAM_FW_CMD_MB,
			    BGE_FW_CMD_DRV_ALIVE);
			FUNC2(sc, BGE_SRAM_FW_CMD_LEN_MB, 4);
			FUNC2(sc, BGE_SRAM_FW_CMD_DATA_MB,
			    BGE_FW_HB_TIMEOUT_SEC);
			FUNC1(sc, BGE_RX_CPU_EVENT,
			    FUNC0(sc, BGE_RX_CPU_EVENT) |
			    BGE_RX_CPU_DRV_EVENT);
		}
	}
}