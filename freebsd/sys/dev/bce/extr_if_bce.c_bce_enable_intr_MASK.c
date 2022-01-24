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
struct bce_softc {int last_status_idx; int hc_command; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCE_HC_COMMAND ; 
 int BCE_HC_COMMAND_COAL_NOW ; 
 int /*<<< orphan*/  BCE_PCICFG_INT_ACK_CMD ; 
 int BCE_PCICFG_INT_ACK_CMD_INDEX_VALID ; 
 int BCE_PCICFG_INT_ACK_CMD_MASK_INT ; 
 int /*<<< orphan*/  BCE_VERBOSE_INTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bce_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct bce_softc *sc, int coal_now)
{
	FUNC0(BCE_VERBOSE_INTR);

	FUNC2(sc, BCE_PCICFG_INT_ACK_CMD,
	    BCE_PCICFG_INT_ACK_CMD_INDEX_VALID |
	    BCE_PCICFG_INT_ACK_CMD_MASK_INT | sc->last_status_idx);

	FUNC2(sc, BCE_PCICFG_INT_ACK_CMD,
	    BCE_PCICFG_INT_ACK_CMD_INDEX_VALID | sc->last_status_idx);

	/* Force an immediate interrupt (whether there is new data or not). */
	if (coal_now)
		FUNC2(sc, BCE_HC_COMMAND, sc->hc_command | BCE_HC_COMMAND_COAL_NOW);

	FUNC1(BCE_VERBOSE_INTR);
}