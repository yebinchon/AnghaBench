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
typedef  short rman_res_t ;
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/ * devclass_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ISA_ORDER_SPECULATIVE ; 
 int /*<<< orphan*/  M_TEMP ; 
 int NCTAU ; 
 short NPORT ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,short*,short*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,short,short) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,short,short,short) ; 
 scalar_t__ FUNC4 (short,int,int) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ***,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 short* porttab ; 

__attribute__((used)) static void FUNC12 (driver_t *driver, device_t dev)
{
	rman_res_t iobase, rescount;
	int devcount;
	device_t *devices;
	device_t child;
	devclass_t my_devclass;
	int i, k;

	if ((my_devclass = FUNC5 ("ct")) == NULL)
		return;

	FUNC6 (my_devclass, &devices, &devcount);

	if (devcount == 0) {
		/* We should find all devices by our self. We could alter other
		 * devices, but we don't have a choise
		 */
		for (i = 0; (iobase = porttab [i]) != 0; i++) {
			if (!FUNC3 (dev, 0, SYS_RES_IOPORT,
			    iobase, iobase + NPORT, NPORT))
				continue;
			if (FUNC4 (iobase, -1, -1) == 0)
				continue;
			
			devcount++;
			child = FUNC0 (dev, ISA_ORDER_SPECULATIVE, "ct",
			    -1);

			if (child == NULL)
				return;

			FUNC9 (child, "Cronyx Tau-ISA");
			FUNC10 (child, driver);
			FUNC2 (child, SYS_RES_IOPORT, 0,
			    iobase, NPORT);

			if (devcount >= NCTAU)
				break;
		}
	} else {
		static	short porttab [] = {
			0x200, 0x220, 0x240, 0x260, 0x280, 0x2a0, 0x2c0, 0x2e0,
			0x300, 0x320, 0x340, 0x360, 0x380, 0x3a0, 0x3c0, 0x3e0, 0
		};
		/* Lets check user choise.
		 */
		for (k = 0; k < devcount; k++) {
			if (FUNC1 (devices[k], SYS_RES_IOPORT, 0,
			    &iobase, &rescount) != 0)
				continue;

			for (i = 0; porttab [i] != 0; i++) {
				if (porttab [i] != iobase)
					continue;
					
				if (!FUNC3 (devices[k], 0, SYS_RES_IOPORT,
				    iobase, iobase + NPORT, NPORT))
					continue;

				if (FUNC4 (iobase, -1, -1) == 0)
					continue;
				porttab [i] = -1;
				FUNC9 (devices[k], "Cronyx Tau-ISA");
				break;
			}
			if (porttab [i] == 0) {
				FUNC7 (
				    FUNC8 (devices[k]),
				    devices [k]);
				devices[k] = 0;
				continue;
			}
		}
		for (k = 0; k < devcount; k++) {
			if (devices[k] == 0)
				continue;
			if (FUNC1 (devices[k], SYS_RES_IOPORT, 0,
			    &iobase, &rescount) == 0)
				continue;
			for (i = 0; (iobase = porttab [i]) != 0; i++) {
				if (porttab [i] == -1)
					continue;
				if (!FUNC3 (devices[k], 0, SYS_RES_IOPORT,
				    iobase, iobase + NPORT, NPORT))
					continue;
				if (FUNC4 (iobase, -1, -1) == 0)
					continue;
			
				FUNC2 (devices[k], SYS_RES_IOPORT, 0,
				    iobase, NPORT);
				porttab [i] = -1;
				FUNC9 (devices[k], "Cronyx Tau-ISA");
				break;
			}
			if (porttab [i] == 0) {
				FUNC7 (
				    FUNC8 (devices[k]),
				    devices [k]);
			}
		}		
		FUNC11 (devices, M_TEMP);
	}
	
	return;
}