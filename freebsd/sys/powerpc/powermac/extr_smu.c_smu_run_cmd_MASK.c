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
typedef  int uint8_t ;
struct smu_softc {scalar_t__ sc_doorbellirqid; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_cmdq; struct smu_cmd* sc_cur_cmd; } ;
struct smu_cmd {int cmd; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct smu_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct smu_cmd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmd_q ; 
 struct smu_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  smu_cmd ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct smu_cmd*) ; 
 int FUNC8 (struct smu_cmd*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC9(device_t dev, struct smu_cmd *cmd, int wait)
{
	struct smu_softc *sc;
	uint8_t cmd_code;
	int error;

	sc = FUNC3(dev);
	cmd_code = cmd->cmd;

	FUNC4(&sc->sc_mtx);
	if (sc->sc_cur_cmd != NULL) {
		FUNC1(&sc->sc_cmdq, cmd, cmd_q);
	} else
		FUNC7(dev, cmd);
	FUNC5(&sc->sc_mtx);

	if (!wait)
		return (0);

	if (sc->sc_doorbellirqid < 0) {
		/* Poll if the IRQ has not been set up yet */
		do {
			FUNC0(50);
			FUNC6(dev);
		} while (sc->sc_cur_cmd != NULL);
	} else {
		/* smu_doorbell_intr will wake us when the command is ACK'ed */
		error = FUNC8(cmd, 0, "smu", 800 * hz / 1000);
		if (error != 0)
			FUNC6(dev);	/* One last chance */
		
		if (error != 0) {
		    FUNC4(&sc->sc_mtx);
		    if (cmd->cmd == cmd_code) {	/* Never processed */
			/* Abort this command if we timed out */
			if (sc->sc_cur_cmd == cmd)
				sc->sc_cur_cmd = NULL;
			else
				FUNC2(&sc->sc_cmdq, cmd, smu_cmd,
				    cmd_q);
			FUNC5(&sc->sc_mtx);
			return (error);
		    }
		    error = 0;
		    FUNC5(&sc->sc_mtx);
		}
	}

	/* SMU acks the command by inverting the command bits */
	if (cmd->cmd == ((~cmd_code) & 0xff))
		error = 0;
	else
		error = EIO;

	return (error);
}