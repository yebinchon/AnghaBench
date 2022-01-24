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
struct snddev_info {int bufsz; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct snddev_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 

unsigned int
FUNC6(device_t dev, unsigned int minbufsz, unsigned int deflt, unsigned int maxbufsz)
{
	struct snddev_info *d = FUNC2(dev);
	int sz, x;

	sz = 0;
	if (FUNC5(FUNC1(dev), FUNC3(dev), "buffersize", &sz) == 0) {
		x = sz;
		FUNC0(sz, minbufsz, maxbufsz);
		if (x != sz)
			FUNC4(dev, "'buffersize=%d' hint is out of range (%d-%d), using %d\n", x, minbufsz, maxbufsz, sz);
		x = minbufsz;
		while (x < sz)
			x <<= 1;
		if (x > sz)
			x >>= 1;
		if (x != sz) {
			FUNC4(dev, "'buffersize=%d' hint is not a power of 2, using %d\n", sz, x);
			sz = x;
		}
	} else {
		sz = deflt;
	}

	d->bufsz = sz;

	return sz;
}