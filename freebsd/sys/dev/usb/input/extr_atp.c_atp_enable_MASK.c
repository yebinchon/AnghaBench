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
struct atp_softc {int sc_state; int /*<<< orphan*/  sc_status; } ;

/* Variables and functions */
 int ATP_ENABLED ; 
 int /*<<< orphan*/  ATP_LLEVEL_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct atp_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct atp_softc *sc)
{
	if (sc->sc_state & ATP_ENABLED)
		return (0);

	/* reset status */
	FUNC2(&sc->sc_status, 0, sizeof(sc->sc_status));

	FUNC1(sc);

	sc->sc_state |= ATP_ENABLED;

	FUNC0(ATP_LLEVEL_INFO, "enabled atp\n");
	return (0);
}