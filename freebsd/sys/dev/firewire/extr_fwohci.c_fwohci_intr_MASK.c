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
struct fwohci_softc {int /*<<< orphan*/  fc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fwohci_softc*) ; 

void
FUNC3(void *arg)
{
	struct fwohci_softc *sc = (struct fwohci_softc *)arg;

	FUNC0(&sc->fc);
	FUNC2(sc);
	FUNC1(&sc->fc);
}