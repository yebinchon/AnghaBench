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
struct sc_info {int pch_cnt; int rch_cnt; int /*<<< orphan*/ * savemem; TYPE_1__* rch; TYPE_2__* pch; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {scalar_t__ active; } ;
struct TYPE_3__ {scalar_t__ active; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASSP_CONTROL_C ; 
 int /*<<< orphan*/  CHANGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  HOST_INT_CTRL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_info*) ; 
 int /*<<< orphan*/  PCMTRIG_STOP ; 
 int REV_B_CODE_MEMORY_BEGIN ; 
 int REV_B_CODE_MEMORY_END ; 
 int REV_B_DATA_MEMORY_BEGIN ; 
 int REV_B_DATA_MEMORY_END ; 
 int /*<<< orphan*/  FUNC4 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sc_info*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sc_info*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sc_info*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sc_info* FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	struct sc_info *sc = FUNC12(dev);
	int i, index = 0;

        FUNC1(CHANGE, ("m3_pci_suspend\n"));

	FUNC2(sc);
	for (i=0 ; i<sc->pch_cnt ; i++) {
		if (sc->pch[i].active) {
			FUNC5(NULL, &sc->pch[i],
			    PCMTRIG_STOP);
		}
	}
	for (i=0 ; i<sc->rch_cnt ; i++) {
		if (sc->rch[i].active) {
			FUNC7(NULL, &sc->rch[i],
			    PCMTRIG_STOP);
		}
	}
	FUNC0(10 * 1000); /* give things a chance to stop */

	/* Disable interrupts */
	FUNC11(sc, HOST_INT_CTRL, 0);
	FUNC10(sc, ASSP_CONTROL_C, 0);

	FUNC4(sc);

	/* Save the state of the ASSP */
	for (i = REV_B_CODE_MEMORY_BEGIN; i <= REV_B_CODE_MEMORY_END; i++)
		sc->savemem[index++] = FUNC8(sc, i);
	for (i = REV_B_DATA_MEMORY_BEGIN; i <= REV_B_DATA_MEMORY_END; i++)
		sc->savemem[index++] = FUNC9(sc, i);

	/* Power down the card to D3 state */
	FUNC6(sc, 3);
	FUNC3(sc);

	return 0;
}