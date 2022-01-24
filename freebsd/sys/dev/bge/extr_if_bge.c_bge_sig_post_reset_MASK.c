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
struct bge_softc {int bge_asf_mode; } ;

/* Variables and functions */
 int ASF_NEW_HANDSHAKE ; 
 int /*<<< orphan*/  BGE_FW_DRV_STATE_START_DONE ; 
 int /*<<< orphan*/  BGE_FW_DRV_STATE_UNLOAD_DONE ; 
#define  BGE_RESET_SHUTDOWN 129 
#define  BGE_RESET_START 128 
 int /*<<< orphan*/  BGE_SRAM_FW_DRV_STATE_MB ; 
 int /*<<< orphan*/  FUNC0 (struct bge_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct bge_softc *sc, int type)
{

	if (sc->bge_asf_mode & ASF_NEW_HANDSHAKE) {
		switch (type) {
		case BGE_RESET_START:
			FUNC1(sc, BGE_SRAM_FW_DRV_STATE_MB,
			    BGE_FW_DRV_STATE_START_DONE);
			/* START DONE */
			break;
		case BGE_RESET_SHUTDOWN:
			FUNC1(sc, BGE_SRAM_FW_DRV_STATE_MB,
			    BGE_FW_DRV_STATE_UNLOAD_DONE);
			break;
		}
	}
	if (type == BGE_RESET_SHUTDOWN)
		FUNC0(sc, type);
}