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
struct bktr_softc {int /*<<< orphan*/  vbi_select; int /*<<< orphan*/  vbisize; } ;
typedef  struct bktr_softc* bktr_ptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bktr_softc*) ; 
 int POLLIN ; 
 int POLLRDNORM ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bktr_softc*) ; 
#define  VBI_DEV 128 
 int /*<<< orphan*/  bktr_devclass ; 
 int /*<<< orphan*/  FUNC7 (struct cdev*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  s ; 
 int /*<<< orphan*/  FUNC9 (struct thread*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10( struct cdev *dev, int events, struct thread *td)
{
	int		unit;
	bktr_ptr_t	bktr;
	int revents = 0; 
	FUNC0(s);

	unit = FUNC5(FUNC7(dev));

	/* Get the device data */
	bktr = (struct bktr_softc*)FUNC8(bktr_devclass, unit);
	if (bktr == NULL) {
		/* the device is no longer valid/functioning */
		return (ENXIO);
	}

	FUNC4(bktr);
	FUNC1(s);

	if (events & (POLLIN | POLLRDNORM)) {

		switch ( FUNC3( FUNC7(dev) ) ) {
		case VBI_DEV:
			if(bktr->vbisize == 0)
				FUNC9(td, &bktr->vbi_select);
			else
				revents |= events & (POLLIN | POLLRDNORM);
			break;
		}
	}

	FUNC2(s);
	FUNC6(bktr);

	return (revents);
}