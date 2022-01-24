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
struct cdev {int dummy; } ;
struct apm_softc {int sc_flags; scalar_t__ event_ptr; scalar_t__ event_count; int /*<<< orphan*/  event_filter; } ;

/* Variables and functions */
#define  APMDEV_CTL 129 
#define  APMDEV_NORMAL 128 
 int SCFLAG_OCTL ; 
 int SCFLAG_ONORMAL ; 
 int SCFLAG_OPEN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct apm_softc apm_softc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct cdev*) ; 

__attribute__((used)) static int
FUNC3(struct cdev *dev, int flag, int fmt, struct thread *td)
{
	struct apm_softc *sc = &apm_softc;

	switch (FUNC2(dev)) {
	case APMDEV_CTL:
		FUNC0();
		sc->sc_flags &= ~SCFLAG_OCTL;
		FUNC1(sc->event_filter, sizeof sc->event_filter);
		break;
	case APMDEV_NORMAL:
		sc->sc_flags &= ~SCFLAG_ONORMAL;
		break;
	}
	if ((sc->sc_flags & SCFLAG_OPEN) == 0) {
		sc->event_count = 0;
		sc->event_ptr = 0;
	}
	return 0;
}