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
struct ppb_data {scalar_t__ state; scalar_t__ error; int /*<<< orphan*/  class_id; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PPB_COMPATIBLE ; 
 int /*<<< orphan*/  PPB_ECP ; 
 int /*<<< orphan*/  PPB_EPP ; 
 scalar_t__ PPB_ERROR ; 
 int PPB_EXTENSIBILITY_LINK ; 
 int /*<<< orphan*/  PPB_NIBBLE ; 
 scalar_t__ PPB_NOT_IEEE1284 ; 
 int /*<<< orphan*/  PPB_PS2 ; 
 int PPB_REQUEST_ID ; 
 int PPB_USE_RLE ; 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(device_t bus)
{
	struct ppb_data * ppb = (struct ppb_data *)FUNC0(bus);
	int error = 0;

	/* try all IEEE1284 modes, for one device only
	 *
	 * XXX We should implement the IEEE1284.3 standard to detect
	 * daisy chained devices
	 */

	error = FUNC2(bus, PPB_NIBBLE, PPB_REQUEST_ID);

	if ((ppb->state == PPB_ERROR) && (ppb->error == PPB_NOT_IEEE1284))
		goto end_scan;

	FUNC3(bus);

	FUNC1(bus, "IEEE1284 device found ");

	if (!(error = FUNC2(bus, PPB_NIBBLE, 0))) {
		FUNC5("/NIBBLE");
		FUNC3(bus);
	}

	if (!(error = FUNC2(bus, PPB_PS2, 0))) {
		FUNC5("/PS2");
		FUNC3(bus);
	}

	if (!(error = FUNC2(bus, PPB_ECP, 0))) {
		FUNC5("/ECP");
		FUNC3(bus);
	}

	if (!(error = FUNC2(bus, PPB_ECP, PPB_USE_RLE))) {
		FUNC5("/ECP_RLE");
		FUNC3(bus);
	}

	if (!(error = FUNC2(bus, PPB_EPP, 0))) {
		FUNC5("/EPP");
		FUNC3(bus);
	}

	/* try more IEEE1284 modes */
	if (bootverbose) {
		if (!(error = FUNC2(bus, PPB_NIBBLE,
				PPB_REQUEST_ID))) {
			FUNC5("/NIBBLE_ID");
			FUNC3(bus);
		}

		if (!(error = FUNC2(bus, PPB_PS2,
				PPB_REQUEST_ID))) {
			FUNC5("/PS2_ID");
			FUNC3(bus);
		}

		if (!(error = FUNC2(bus, PPB_ECP,
				PPB_REQUEST_ID))) {
			FUNC5("/ECP_ID");
			FUNC3(bus);
		}

		if (!(error = FUNC2(bus, PPB_ECP,
				PPB_REQUEST_ID | PPB_USE_RLE))) {
			FUNC5("/ECP_RLE_ID");
			FUNC3(bus);
		}

		if (!(error = FUNC2(bus, PPB_COMPATIBLE,
				PPB_EXTENSIBILITY_LINK))) {
			FUNC5("/Extensibility Link");
			FUNC3(bus);
		}
	}

	FUNC5("\n");

	/* detect PnP devices */
	ppb->class_id = FUNC4(bus);

	return (0);

end_scan:
	return (error);
}