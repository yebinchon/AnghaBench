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
typedef  scalar_t__ uint32_t ;
struct fwohci_softc {int /*<<< orphan*/  intstat; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fwohci_softc*,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC2(void *arg, int pending)
{
	struct fwohci_softc *sc = (struct fwohci_softc *)arg;
	uint32_t stat;

again:
	stat = FUNC0(&sc->intstat);
	if (stat)
		FUNC1(sc, stat, -1);
	else
		return;
	goto again;
}