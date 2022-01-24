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
struct otus_softc {int /*<<< orphan*/ * sc_cmd; int /*<<< orphan*/  sc_cmd_inactive; int /*<<< orphan*/  sc_cmd_waiting; int /*<<< orphan*/  sc_cmd_pending; int /*<<< orphan*/  sc_cmd_active; } ;

/* Variables and functions */
 int OTUS_CMD_LIST_COUNT ; 
 int /*<<< orphan*/  OTUS_MAX_TXCMDSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next_cmd ; 
 int FUNC2 (struct otus_softc*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct otus_softc *sc)
{
	int error, i;

	error = FUNC2(sc, sc->sc_cmd, OTUS_CMD_LIST_COUNT,
	    OTUS_MAX_TXCMDSZ);
	if (error != 0)
		return (error);

	FUNC0(&sc->sc_cmd_active);
	FUNC0(&sc->sc_cmd_inactive);
	FUNC0(&sc->sc_cmd_pending);
	FUNC0(&sc->sc_cmd_waiting);

	for (i = 0; i < OTUS_CMD_LIST_COUNT; i++)
		FUNC1(&sc->sc_cmd_inactive, &sc->sc_cmd[i],
		    next_cmd);

	return (0);
}