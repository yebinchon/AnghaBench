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
struct uio {int dummy; } ;
struct cdev {int dummy; } ;
struct bktr_softc {int dummy; } ;
typedef  struct bktr_softc* bktr_ptr_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  VBI_DEV 129 
#define  VIDEO_DEV 128 
 int /*<<< orphan*/  bktr_devclass ; 
 int /*<<< orphan*/  FUNC2 (struct cdev*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct bktr_softc*,struct uio*,int) ; 
 int FUNC5 (struct bktr_softc*,int,struct cdev*,struct uio*) ; 

__attribute__((used)) static int
FUNC6( struct cdev *dev, struct uio *uio, int ioflag )
{
	bktr_ptr_t	bktr;
	int		unit;
	
	unit = FUNC1(FUNC2(dev));

	/* Get the device data */
	bktr = (struct bktr_softc*)FUNC3(bktr_devclass, unit);
	if (bktr == NULL) {
		/* the device is no longer valid/functioning */
		return (ENXIO);
	}

	switch ( FUNC0( FUNC2(dev) ) ) {
	case VIDEO_DEV:
		return( FUNC5( bktr, unit, dev, uio ) );
	case VBI_DEV:
		return( FUNC4( bktr, uio, ioflag ) );
	}
        return( ENXIO );
}