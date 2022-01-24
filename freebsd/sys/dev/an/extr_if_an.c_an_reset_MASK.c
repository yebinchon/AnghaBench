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
struct an_softc {int /*<<< orphan*/  an_dev; scalar_t__ an_gone; } ;

/* Variables and functions */
 int /*<<< orphan*/  AN_CMD_DISABLE ; 
 int /*<<< orphan*/  AN_CMD_ENABLE ; 
 int /*<<< orphan*/  AN_CMD_FORCE_SYNCLOSS ; 
 int /*<<< orphan*/  AN_CMD_FW_RESTART ; 
 int /*<<< orphan*/  AN_CMD_NOOP2 ; 
 int /*<<< orphan*/  FUNC0 (struct an_softc*) ; 
 scalar_t__ ETIMEDOUT ; 
 scalar_t__ FUNC1 (struct an_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC3(struct an_softc *sc)
{
	if (sc->an_gone)
		return;

	FUNC0(sc);
	FUNC1(sc, AN_CMD_ENABLE, 0);
	FUNC1(sc, AN_CMD_FW_RESTART, 0);
	FUNC1(sc, AN_CMD_NOOP2, 0);

	if (FUNC1(sc, AN_CMD_FORCE_SYNCLOSS, 0) == ETIMEDOUT)
		FUNC2(sc->an_dev, "reset failed\n");

	FUNC1(sc, AN_CMD_DISABLE, 0);

	return;
}