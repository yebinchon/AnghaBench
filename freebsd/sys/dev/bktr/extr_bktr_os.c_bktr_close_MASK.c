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
struct bktr_softc {int dummy; } ;
typedef  struct bktr_softc* bktr_ptr_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  TUNER_DEV 130 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  VBI_DEV 129 
#define  VIDEO_DEV 128 
 int /*<<< orphan*/  bktr_devclass ; 
 int /*<<< orphan*/  FUNC2 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct bktr_softc*) ; 
 int FUNC7 (struct bktr_softc*) ; 
 int FUNC8 (struct bktr_softc*) ; 

__attribute__((used)) static int
FUNC9( struct cdev *dev, int flags, int fmt, struct thread *td )
{
	bktr_ptr_t	bktr;
	int		unit;
	int		result;

	unit = FUNC1( FUNC2(dev) );

	/* Get the device data */
	bktr = (struct bktr_softc*)FUNC4(bktr_devclass, unit);
	if (bktr == NULL) {
		/* the device is no longer valid/functioning */
		return (ENXIO);
	}

	switch ( FUNC0( FUNC2(dev) ) ) {
	case VIDEO_DEV:
		result = FUNC8( bktr );
		break;
	case TUNER_DEV:
		result = FUNC6( bktr );
		break;
	case VBI_DEV:
		result = FUNC7( bktr );
		break;
	default:
		return (ENXIO);
		break;
	}

	FUNC5(FUNC3(bktr_devclass, unit)); 
	return( result );
}