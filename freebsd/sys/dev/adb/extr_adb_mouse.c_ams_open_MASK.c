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
struct adb_mouse_softc {int /*<<< orphan*/  sc_mtx; scalar_t__ buttons; scalar_t__ ydelta; scalar_t__ xdelta; scalar_t__ packet_read_len; } ;

/* Variables and functions */
 struct adb_mouse_softc* FUNC0 (struct cdev*) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct cdev *dev, int flag, int fmt, struct thread *p)
{
	struct adb_mouse_softc *sc;

	sc = FUNC0(dev);
	if (sc == NULL)
		return (ENXIO);

	FUNC1(&sc->sc_mtx);
	sc->packet_read_len = 0;
	sc->xdelta = 0;
	sc->ydelta = 0;
	sc->buttons = 0;
	FUNC2(&sc->sc_mtx);

	return (0);
}