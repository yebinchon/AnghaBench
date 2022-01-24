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
typedef  int /*<<< orphan*/  u_char ;
struct uio {scalar_t__ uio_resid; } ;
struct TYPE_2__ {scalar_t__ count; int head; int /*<<< orphan*/ * buf; } ;
struct psm_softc {int state; TYPE_1__ queue; struct cdev* bdev; } ;
struct cdev {struct psm_softc* si_drv1; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EIO ; 
 int EWOULDBLOCK ; 
 int PCATCH ; 
 int PSM_ASLP ; 
 int PSM_SMALLBUFSIZE ; 
 int PSM_VALID ; 
 int PZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (scalar_t__,scalar_t__) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct psm_softc*,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,struct uio*) ; 

__attribute__((used)) static int
FUNC6(struct cdev *dev, struct uio *uio, int flag)
{
	struct psm_softc *sc = dev->si_drv1;
	u_char buf[PSM_SMALLBUFSIZE];
	int error = 0;
	int s;
	int l;

	if ((sc->state & PSM_VALID) == 0)
		return (EIO);

	/* block until mouse activity occurred */
	s = FUNC2();
	while (sc->queue.count <= 0) {
		if (dev != sc->bdev) {
			FUNC3(s);
			return (EWOULDBLOCK);
		}
		sc->state |= PSM_ASLP;
		error = FUNC4(sc, PZERO | PCATCH, "psmrea", 0);
		sc->state &= ~PSM_ASLP;
		if (error) {
			FUNC3(s);
			return (error);
		} else if ((sc->state & PSM_VALID) == 0) {
			/* the device disappeared! */
			FUNC3(s);
			return (EIO);
		}
	}
	FUNC3(s);

	/* copy data to the user land */
	while ((sc->queue.count > 0) && (uio->uio_resid > 0)) {
		s = FUNC2();
		l = FUNC1(sc->queue.count, uio->uio_resid);
		if (l > sizeof(buf))
			l = sizeof(buf);
		if (l > sizeof(sc->queue.buf) - sc->queue.head) {
			FUNC0(&sc->queue.buf[sc->queue.head], &buf[0],
			    sizeof(sc->queue.buf) - sc->queue.head);
			FUNC0(&sc->queue.buf[0],
			    &buf[sizeof(sc->queue.buf) - sc->queue.head],
			    l - (sizeof(sc->queue.buf) - sc->queue.head));
		} else
			FUNC0(&sc->queue.buf[sc->queue.head], &buf[0], l);
		sc->queue.count -= l;
		sc->queue.head = (sc->queue.head + l) % sizeof(sc->queue.buf);
		FUNC3(s);
		error = FUNC5(buf, l, uio);
		if (error)
			break;
	}

	return (error);
}