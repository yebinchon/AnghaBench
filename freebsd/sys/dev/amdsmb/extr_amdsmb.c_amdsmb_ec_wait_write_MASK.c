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
struct amdsmb_softc {int /*<<< orphan*/  smbus; } ;

/* Variables and functions */
 int FUNC0 (struct amdsmb_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  EC_SC ; 
 int EC_SC_IBF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC3(struct amdsmb_softc *sc)
{
	int timeout = 500;

	while (timeout-- && FUNC0(sc, EC_SC) & EC_SC_IBF)
		FUNC1(1);
	if (timeout == 0) {
		FUNC2(sc->smbus, "timeout waiting for IBF to clear\n");
		return (1);
	}
	return (0);
}