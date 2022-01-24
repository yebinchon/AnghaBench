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
struct bktr_softc {int flags; int bt848_card; int bt848_tuner; int reverse_mute; int slow_msp_audio; int stereo_once; int amsound; int dolby; } ;
typedef  struct bktr_softc* bktr_ptr_t ;

/* Variables and functions */
 int Bt848_MAX_CARD ; 
 int Bt848_MAX_TUNER ; 
 int ENXIO ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int METEOR_INITALIZED ; 
#define  TUNER_DEV 130 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  VBI_DEV 129 
#define  VIDEO_DEV 128 
 int /*<<< orphan*/  bktr_devclass ; 
 int bt848_amsound ; 
 int bt848_card ; 
 int bt848_dolby ; 
 int bt848_reverse_mute ; 
 int bt848_slow_msp_audio ; 
 int bt848_stereo_once ; 
 int bt848_tuner ; 
 int /*<<< orphan*/  FUNC2 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bktr_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct bktr_softc*) ; 
 int FUNC9 (struct bktr_softc*) ; 
 int FUNC10 (struct bktr_softc*) ; 

__attribute__((used)) static int
FUNC11( struct cdev *dev, int flags, int fmt, struct thread *td )
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

	if (!(bktr->flags & METEOR_INITALIZED)) /* device not found */
		return( ENXIO );	

	/* Record that the device is now busy */
	FUNC5(FUNC3(bktr_devclass, unit)); 


	if (bt848_card != -1) {
	  if ((bt848_card >> 8   == unit ) &&
	     ( (bt848_card & 0xff) < Bt848_MAX_CARD )) {
	    if ( bktr->bt848_card != (bt848_card & 0xff) ) {
	      bktr->bt848_card = (bt848_card & 0xff);
	      FUNC7(bktr, FALSE, unit);
	    }
	  }
	}

	if (bt848_tuner != -1) {
	  if ((bt848_tuner >> 8   == unit ) &&
	     ( (bt848_tuner & 0xff) < Bt848_MAX_TUNER )) {
	    if ( bktr->bt848_tuner != (bt848_tuner & 0xff) ) {
	      bktr->bt848_tuner = (bt848_tuner & 0xff);
	      FUNC7(bktr, FALSE, unit);
	    }
	  }
	}

	if (bt848_reverse_mute != -1) {
	  if ((bt848_reverse_mute >> 8)   == unit ) {
	    bktr->reverse_mute = bt848_reverse_mute & 0xff;
	  }
	}

	if (bt848_slow_msp_audio != -1) {
	  if ((bt848_slow_msp_audio >> 8) == unit ) {
	      bktr->slow_msp_audio = (bt848_slow_msp_audio & 0xff);
	  }
	}

#ifdef BKTR_NEW_MSP34XX_DRIVER
	if (bt848_stereo_once != 0) {
	  if ((bt848_stereo_once >> 8) == unit ) {
	      bktr->stereo_once = (bt848_stereo_once & 0xff);
	  }
	}

	if (bt848_amsound != -1) {
	  if ((bt848_amsound >> 8) == unit ) {
	      bktr->amsound = (bt848_amsound & 0xff);
	  }
	}

	if (bt848_dolby != -1) {
	  if ((bt848_dolby >> 8) == unit ) {
	      bktr->dolby = (bt848_dolby & 0xff);
	  }
	}
#endif

	switch ( FUNC0( FUNC2(dev) ) ) {
	case VIDEO_DEV:
		result = FUNC10( bktr );
		break;
	case TUNER_DEV:
		result = FUNC8( bktr );
		break;
	case VBI_DEV:
		result = FUNC9( bktr );
		break;
	default:
		result = ENXIO;
		break;
	}

	/* If there was an error opening the device, undo the busy status */
	if (result != 0)
		FUNC6(FUNC3(bktr_devclass, unit)); 
	return( result );
}