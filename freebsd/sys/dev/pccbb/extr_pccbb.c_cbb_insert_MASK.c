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
typedef  int uint32_t ;
struct cbb_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  cbdev; int /*<<< orphan*/  flags; TYPE_1__* exca; } ;
struct TYPE_2__ {int /*<<< orphan*/  pccarddev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CBB_16BIT_CARD ; 
 int /*<<< orphan*/  CBB_SOCKET_EVENT ; 
 int /*<<< orphan*/  CBB_SOCKET_STATE ; 
 int CBB_STATE_CB_CARD ; 
 int CBB_STATE_R2_CARD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cbb_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(struct cbb_softc *sc)
{
	uint32_t sockevent, sockstate;

	sockevent = FUNC2(sc, CBB_SOCKET_EVENT);
	sockstate = FUNC2(sc, CBB_SOCKET_STATE);

	FUNC1((sc->dev, "card inserted: event=0x%08x, state=%08x\n",
	    sockevent, sockstate));

	if (sockstate & CBB_STATE_R2_CARD) {
		if (FUNC3(sc->exca[0].pccarddev)) {
			sc->flags |= CBB_16BIT_CARD;
			FUNC5(&sc->exca[0]);
		} else {
			FUNC4(sc->dev,
			    "16-bit card inserted, but no pccard bus.\n");
		}
	} else if (sockstate & CBB_STATE_CB_CARD) {
		if (FUNC3(sc->cbdev)) {
			sc->flags &= ~CBB_16BIT_CARD;
			FUNC0(sc->cbdev);
		} else {
			FUNC4(sc->dev,
			    "CardBus card inserted, but no cardbus bus.\n");
		}
	} else {
		/*
		 * We should power the card down, and try again a couple of
		 * times if this happens. XXX
		 */
		FUNC4(sc->dev, "Unsupported card type detected\n");
	}
}