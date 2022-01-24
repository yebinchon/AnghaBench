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
typedef  int /*<<< orphan*/  uint8_t ;
struct uath_softc {int /*<<< orphan*/  sc_cmd_inactive; scalar_t__ sc_cmd_dma_buf; int /*<<< orphan*/  sc_cmd_waiting; int /*<<< orphan*/  sc_cmd_pending; int /*<<< orphan*/  sc_cmd_active; } ;
struct uath_cmd {int msgid; int /*<<< orphan*/ * buf; struct uath_softc* sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct uath_cmd*,int /*<<< orphan*/ ) ; 
 int UATH_CMD_LIST_COUNT ; 
 int UATH_MAX_CMDSZ ; 
 int /*<<< orphan*/  FUNC2 (struct uath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  st_cmd_inactive ; 

__attribute__((used)) static int
FUNC3(struct uath_softc *sc, struct uath_cmd cmds[])
{
	int i;

	FUNC0(&sc->sc_cmd_active);
	FUNC0(&sc->sc_cmd_pending);
	FUNC0(&sc->sc_cmd_waiting);
	FUNC0(&sc->sc_cmd_inactive);

	for (i = 0; i != UATH_CMD_LIST_COUNT; i++) {
		struct uath_cmd *cmd = &cmds[i];

		cmd->sc = sc;	/* backpointer for callbacks */
		cmd->msgid = i;
		cmd->buf = ((uint8_t *)sc->sc_cmd_dma_buf) +
		    (i * UATH_MAX_CMDSZ);
		FUNC1(&sc->sc_cmd_inactive, cmd, next);
		FUNC2(sc, st_cmd_inactive);
	}
	return (0);
}