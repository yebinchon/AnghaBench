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
struct thread {int dummy; } ;
struct cyapa_softc {int isselect; int /*<<< orphan*/  selinfo; int /*<<< orphan*/  rfifo; scalar_t__ data_signal; } ;
struct cdev {struct cyapa_softc* si_drv1; } ;

/* Variables and functions */
 int POLLIN ; 
 int POLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (struct cyapa_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct cyapa_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct cyapa_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct cdev *dev, int events, struct thread *td)
{
	struct cyapa_softc *sc;
	int revents;

	sc = dev->si_drv1;
	revents = 0;

	FUNC0(sc);
	if (events & (POLLIN | POLLRDNORM)) {
		if (sc->data_signal || !FUNC2(sc, &sc->rfifo))
			revents = events & (POLLIN | POLLRDNORM);
		else {
			sc->isselect = 1;
			FUNC3(td, &sc->selinfo);
		}
	}
	FUNC1(sc);

	return (revents);
}