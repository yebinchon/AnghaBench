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
typedef  int uint32_t ;
struct bge_softc {int bge_mfw_flags; int /*<<< orphan*/  bge_dev; } ;

/* Variables and functions */
 int FUNC0 (struct bge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BGE_APE_EVENT ; 
 int BGE_APE_EVENT_1 ; 
 int /*<<< orphan*/  BGE_APE_EVENT_STATUS ; 
 int BGE_APE_EVENT_STATUS_EVENT_PENDING ; 
 int /*<<< orphan*/  BGE_APE_LOCK_MEM ; 
 int BGE_MFW_ON_APE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct bge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC6(struct bge_softc *sc, uint32_t event)
{
	uint32_t apedata;
	int i;

	/* NCSI does not support APE events. */
	if ((sc->bge_mfw_flags & BGE_MFW_ON_APE) == 0)
		return;

	/* Wait up to 1ms for APE to service previous event. */
	for (i = 10; i > 0; i--) {
		if (FUNC3(sc, BGE_APE_LOCK_MEM) != 0)
			break;
		apedata = FUNC0(sc, BGE_APE_EVENT_STATUS);
		if ((apedata & BGE_APE_EVENT_STATUS_EVENT_PENDING) == 0) {
			FUNC1(sc, BGE_APE_EVENT_STATUS, event |
			    BGE_APE_EVENT_STATUS_EVENT_PENDING);
			FUNC4(sc, BGE_APE_LOCK_MEM);
			FUNC1(sc, BGE_APE_EVENT, BGE_APE_EVENT_1);
			break;
		}
		FUNC4(sc, BGE_APE_LOCK_MEM);
		FUNC2(100);
	}
	if (i == 0)
		FUNC5(sc->bge_dev, "APE event 0x%08x send timed out\n",
		    event);
}