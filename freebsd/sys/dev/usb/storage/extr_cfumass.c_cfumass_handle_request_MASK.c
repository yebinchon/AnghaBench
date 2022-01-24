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
typedef  int uint8_t ;
typedef  scalar_t__ uint16_t ;
struct usb_device_request {scalar_t__ bmRequestType; scalar_t__ bRequest; } ;
struct cfumass_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfumass_softc*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cfumass_softc*) ; 
 int /*<<< orphan*/  CFUMASS_T_COMMAND ; 
 int /*<<< orphan*/  FUNC2 (struct cfumass_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfumass_softc*,char*) ; 
 int ENXIO ; 
 scalar_t__ UR_GET_MAX_LUN ; 
 scalar_t__ UR_RESET ; 
 scalar_t__ UT_READ_CLASS_INTERFACE ; 
 scalar_t__ UT_WRITE_CLASS_INTERFACE ; 
 int /*<<< orphan*/  FUNC4 (struct cfumass_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct cfumass_softc*,int /*<<< orphan*/ ) ; 
 struct cfumass_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int max_lun ; 

__attribute__((used)) static int
FUNC7(device_t dev,
    const void *preq, void **pptr, uint16_t *plen,
    uint16_t offset, uint8_t *pstate)
{
	static uint8_t max_lun_tmp;
	struct cfumass_softc *sc;
	const struct usb_device_request *req;
	uint8_t is_complete;

	sc = FUNC6(dev);
	req = preq;
	is_complete = *pstate;

	FUNC0(sc, "go");

	if (is_complete)
		return (ENXIO);

	if ((req->bmRequestType == UT_WRITE_CLASS_INTERFACE) &&
	    (req->bRequest == UR_RESET)) {
		FUNC3(sc, "received Bulk-Only Mass Storage Reset");
		*plen = 0;

		FUNC1(sc);
		FUNC4(sc);
		FUNC5(sc, CFUMASS_T_COMMAND);
		FUNC2(sc);

		FUNC0(sc, "Bulk-Only Mass Storage Reset done");
		return (0);
	}

	if ((req->bmRequestType == UT_READ_CLASS_INTERFACE) &&
	    (req->bRequest == UR_GET_MAX_LUN)) {
		FUNC0(sc, "received Get Max LUN");
		if (offset == 0) {
			*plen = 1;
			/*
			 * The protocol doesn't support LUN numbers higher
			 * than 15.  Also, some initiators (namely Windows XP
			 * SP3 Version 2002) can't properly query the number
			 * of LUNs, resulting in inaccessible "fake" ones - thus
			 * the default limit of one LUN.
			 */
			if (max_lun < 0 || max_lun > 15) {
				FUNC3(sc,
				    "invalid hw.usb.cfumass.max_lun, must be "
				    "between 0 and 15; defaulting to 0");
				max_lun_tmp = 0;
			} else {
				max_lun_tmp = max_lun;
			}
			*pptr = &max_lun_tmp;
		} else {
			*plen = 0;
		}
		return (0);
	}

	return (ENXIO);
}