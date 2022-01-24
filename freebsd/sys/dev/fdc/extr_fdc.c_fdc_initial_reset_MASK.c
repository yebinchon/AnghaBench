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
struct fdc_data {int /*<<< orphan*/  fdct; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FDC_ENHANCED ; 
 int /*<<< orphan*/  FDC_NE765 ; 
 int /*<<< orphan*/  FDC_UNKNOWN ; 
 int /*<<< orphan*/  FDO_FRST ; 
 int /*<<< orphan*/  NE7CMD_SPECIFY ; 
 int NE7CMD_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (struct fdc_data*,int,int,int,int*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct fdc_data*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct fdc_data*) ; 

int
FUNC8(device_t dev, struct fdc_data *fdc)
{
	int ic_type, part_id;

	/*
	 * A status value of 0xff is very unlikely, but not theoretically
	 * impossible, but it is far more likely to indicate an empty bus.
	 */
	if (FUNC7(fdc) == 0xff)
		return (ENXIO);

	/*
	 * Assert a reset to the floppy controller and check that the status
	 * register goes to zero.
	 */
	FUNC6(fdc, 0);
	FUNC6(fdc, 0);
	if (FUNC7(fdc) != 0)
		return (ENXIO);

	/*
	 * Clear the reset and see it come ready.
	 */
	FUNC6(fdc, FDO_FRST);
	FUNC0(100);
	if (FUNC7(fdc) != 0x80)
		return (ENXIO);

	/* Then, see if it can handle a command. */
	if (FUNC5(fdc, 3, NE7CMD_SPECIFY, FUNC1(6, 240),
	    FUNC2(31, 0), 0))
		return (ENXIO);

	/*
	 * Try to identify the chip.
	 *
	 * The i8272 datasheet documents that unknown commands
	 * will return ST0 as 0x80.  The i8272 is supposedly identical
	 * to the NEC765.
	 * The i82077SL datasheet says 0x90 for the VERSION command,
	 * and several "superio" chips emulate this.
	 */
	if (FUNC5(fdc, 1, NE7CMD_VERSION, 1, &ic_type))
		return (ENXIO);
	if (FUNC5(fdc, 1, 0x18, 1, &part_id))
		return (ENXIO);
	if (bootverbose)
		FUNC3(dev,
		    "ic_type %02x part_id %02x\n", ic_type, part_id);
	switch (ic_type & 0xff) {
	case 0x80:
		FUNC4(dev, "NEC 765 or clone");
		fdc->fdct = FDC_NE765;
		break;
	case 0x81:
	case 0x90:
		FUNC4(dev,
		    "Enhanced floppy controller");
		fdc->fdct = FDC_ENHANCED;
		break;
	default:
		FUNC4(dev, "Generic floppy controller");
		fdc->fdct = FDC_UNKNOWN;
		break;
	}
	return (0);
}