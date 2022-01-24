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
struct rc_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CD180_CCR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ FUNC2 (struct rc_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct rc_softc *sc, int chan, int line)
{
	int rcnt;

	for (rcnt = 50; rcnt && FUNC2(sc, CD180_CCR); rcnt--)
		FUNC0(30);
	if (rcnt == 0)
		FUNC1(sc->sc_dev,
		    "channel %d command timeout, rc.c line: %d\n", chan, line);
}