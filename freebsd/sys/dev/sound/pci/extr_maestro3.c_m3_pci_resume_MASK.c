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
typedef  int u_int8_t ;
struct sc_info {int pch_cnt; int rch_cnt; TYPE_1__* rch; TYPE_2__* pch; int /*<<< orphan*/ * savemem; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {scalar_t__ active; } ;
struct TYPE_3__ {scalar_t__ active; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANGE ; 
 int /*<<< orphan*/  DSP_PORT_CONTROL_REG_B ; 
 int ENXIO ; 
 int KDATA_DMA_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct sc_info*) ; 
 int /*<<< orphan*/  PCMTRIG_START ; 
 int REGB_ENABLE_RESET ; 
 int REV_B_CODE_MEMORY_BEGIN ; 
 int REV_B_CODE_MEMORY_END ; 
 int REV_B_DATA_MEMORY_BEGIN ; 
 int REV_B_DATA_MEMORY_END ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sc_info*) ; 
 int FUNC5 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sc_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sc_info*,int,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 struct sc_info* FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	struct sc_info *sc = FUNC16(dev);
	int i, index = 0;
	u_int8_t reset_state;

	FUNC0(CHANGE, ("m3_pci_resume\n"));

	FUNC1(sc);
	/* Power the card back to D0 */
	FUNC10(sc, 0);

	FUNC7(sc);

	reset_state = FUNC5(sc);

	FUNC6(sc);

	/* Restore the ASSP state */
	for (i = REV_B_CODE_MEMORY_BEGIN; i <= REV_B_CODE_MEMORY_END; i++)
		FUNC13(sc, i, sc->savemem[index++]);
	for (i = REV_B_DATA_MEMORY_BEGIN; i <= REV_B_DATA_MEMORY_END; i++)
		FUNC14(sc, i, sc->savemem[index++]);

	/* Restart the DMA engine */
	FUNC14(sc, KDATA_DMA_ACTIVE, 0);

	/* [m3_assp_continue] */
	FUNC12(sc, DSP_PORT_CONTROL_REG_B, reset_state | REGB_ENABLE_RESET);

	FUNC4(sc);

	FUNC8(sc);

	FUNC2(sc); /* XXX */
	if (FUNC15(dev) == -1) {
		FUNC3(dev, "unable to reinitialize the mixer\n");
		return (ENXIO);
	}
	FUNC1(sc);

	/* Turn the channels back on */
	for (i=0 ; i<sc->pch_cnt ; i++) {
		if (sc->pch[i].active) {
			FUNC9(NULL, &sc->pch[i],
			    PCMTRIG_START);
		}
	}
	for (i=0 ; i<sc->rch_cnt ; i++) {
		if (sc->rch[i].active) {
			FUNC11(NULL, &sc->rch[i],
			    PCMTRIG_START);
		}
	}

	FUNC2(sc);
	return 0;
}