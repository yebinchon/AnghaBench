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
typedef  int uint8_t ;
struct glxiic_softc {size_t state; int error; int /*<<< orphan*/  iicbus; } ;
struct TYPE_2__ {int (* callback ) (struct glxiic_softc*,int) ;scalar_t__ master; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct glxiic_softc*) ; 
 int GLXIIC_SMB_STS_MASTER_BIT ; 
 int GLXIIC_SMB_STS_XMIT_BIT ; 
 int /*<<< orphan*/  GLXIIC_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC1 (struct glxiic_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct glxiic_softc*) ; 
 int IIC_NOERR ; 
 int /*<<< orphan*/  INTR_ERROR ; 
 int FUNC3 (struct glxiic_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct glxiic_softc*,int /*<<< orphan*/ ) ; 
 TYPE_1__* glxiic_state_table ; 
 int /*<<< orphan*/  FUNC5 (struct glxiic_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (struct glxiic_softc*,int) ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	struct glxiic_softc *sc;
	int error;
	uint8_t status, data;

	sc = (struct glxiic_softc *)arg;

	FUNC0(sc);

	status = FUNC3(sc);

	/* Check if this interrupt originated from the SMBus. */
	if ((status &
		~(GLXIIC_SMB_STS_MASTER_BIT | GLXIIC_SMB_STS_XMIT_BIT)) != 0) {

		error = glxiic_state_table[sc->state].callback(sc, status);

		if (error != IIC_NOERR) {
			if (glxiic_state_table[sc->state].master) {
				FUNC5(sc);
				FUNC4(sc, GLXIIC_STATE_IDLE);
				sc->error = error;
				FUNC2(sc);
			} else {
				data = error & 0xff;
				FUNC6(sc->iicbus, INTR_ERROR, &data);
				FUNC4(sc, GLXIIC_STATE_IDLE);
			}
		}
	}

	FUNC1(sc);
}