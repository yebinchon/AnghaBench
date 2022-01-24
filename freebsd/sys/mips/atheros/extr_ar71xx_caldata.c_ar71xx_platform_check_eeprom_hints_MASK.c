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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,long,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,long*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	char buf[64];
	long int addr;
	int size;
	int i;

	for (i = 0; i < 8; i++) {
		FUNC6(buf, sizeof(buf), "map.%d.ath_fixup_addr", i);
		if (FUNC5(FUNC1(dev),
		    FUNC2(dev), buf, &addr) != 0)
			break;
		FUNC6(buf, sizeof(buf), "map.%d.ath_fixup_size", i);
		if (FUNC4(FUNC1(dev),
		    FUNC2(dev), buf, &size) != 0)
			break;
		FUNC3(dev, "map.%d.ath_fixup_addr=0x%08x; size=%d\n",
		    i, (int) addr, size);
		(void) FUNC0(dev, i, addr, size);
        }

        return (0);
}