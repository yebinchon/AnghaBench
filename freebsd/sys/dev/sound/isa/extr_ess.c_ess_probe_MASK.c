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
 uintptr_t BD_F_ESS ; 
 uintptr_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,uintptr_t*) ; 
 int ENXIO ; 
 uintptr_t SCF_PCM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	uintptr_t func, ver, r, f;

	/* The parent device has already been probed. */
	r = FUNC0(FUNC1(dev), dev, 0, &func);
	if (func != SCF_PCM)
		return (ENXIO);

	r = FUNC0(FUNC1(dev), dev, 1, &ver);
	f = (ver & 0xffff0000) >> 16;
	if (!(f & BD_F_ESS))
		return (ENXIO);

    	FUNC2(dev, "ESS 18xx DSP");

	return 0;
}