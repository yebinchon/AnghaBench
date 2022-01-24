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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 uintptr_t BD_F_SB16 ; 
 uintptr_t BD_F_SB16X ; 
 uintptr_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,uintptr_t*) ; 
 int ENXIO ; 
 uintptr_t SCF_PCM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int,int,char*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
    	char buf[64];
	uintptr_t func, ver, r, f;

	/* The parent device has already been probed. */
	r = FUNC0(FUNC1(dev), dev, 0, &func);
	if (func != SCF_PCM)
		return (ENXIO);

	r = FUNC0(FUNC1(dev), dev, 1, &ver);
	f = (ver & 0xffff0000) >> 16;
	ver &= 0x0000ffff;
	if (f & BD_F_SB16) {
		FUNC3(buf, sizeof buf, "SB16 DSP %d.%02d%s", (int) ver >> 8, (int) ver & 0xff,
			 (f & BD_F_SB16X)? " (ViBRA16X)" : "");
    		FUNC2(dev, buf);
		return 0;
	} else
		return (ENXIO);
}