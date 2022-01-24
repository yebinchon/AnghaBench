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
 int /*<<< orphan*/  BGE_FW_DRV_STATE_START ; 
 int /*<<< orphan*/  BGE_FW_DRV_STATE_SUSPEND ; 
 int /*<<< orphan*/  BGE_FW_DRV_STATE_UNLOAD ; 
#define  BGE_RESET_SHUTDOWN 130 
#define  BGE_RESET_START 129 
#define  BGE_RESET_SUSPEND 128 
 int /*<<< orphan*/  BGE_SRAM_FW_DRV_STATE_MB ; 
 int /*<<< orphan*/  BGE_SRAM_FW_MB ; 
 int /*<<< orphan*/  BGE_SRAM_FW_MB_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (struct bge_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct bge_softc *sc, int type)
{

	/*
	 * Some chips don't like this so only do this if ASF is enabled
	 */
	if (sc->bge_asf_mode)
		FUNC1(sc, BGE_SRAM_FW_MB, BGE_SRAM_FW_MB_MAGIC);

	if (sc->bge_asf_mode & ASF_NEW_HANDSHAKE) {
		switch (type) {
		case BGE_RESET_START:
			FUNC1(sc, BGE_SRAM_FW_DRV_STATE_MB,
			    BGE_FW_DRV_STATE_START);
			break;
		case BGE_RESET_SHUTDOWN:
			FUNC1(sc, BGE_SRAM_FW_DRV_STATE_MB,
			    BGE_FW_DRV_STATE_UNLOAD);
			break;
		case BGE_RESET_SUSPEND:
			FUNC1(sc, BGE_SRAM_FW_DRV_STATE_MB,
			    BGE_FW_DRV_STATE_SUSPEND);
			break;
		}
	}

	if (type == BGE_RESET_START || type == BGE_RESET_SUSPEND)
		FUNC0(sc, type);
}