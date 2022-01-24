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

/* Variables and functions */
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(void)
{

	FUNC2("Usage: %s [-c period] [-EefmVxXz] channel-number num-txns [<bufsize> "
	    "[<chain-len> [duration]]]\n", FUNC1());
	FUNC2("       %s -r [-c period] [-vVwz] channel-number address [<bufsize>]\n\n",
	    FUNC1());
	FUNC2("           -c period - Enable interrupt coalescing (us) (default: 0)\n");
	FUNC2("           -E        - Test contiguous 8k copy.\n");
	FUNC2("           -e        - Test non-contiguous 8k copy.\n");
	FUNC2("           -f        - Test block fill.\n");
	FUNC2("           -m        - Test memcpy instead of DMA.\n");
	FUNC2("           -r        - Issue DMA to or from a specific address.\n");
	FUNC2("           -V        - Enable verification\n");
	FUNC2("           -v        - <address> is a kernel virtual address\n");
	FUNC2("           -w        - Write to the specified address\n");
	FUNC2("           -x        - Test DMA CRC.\n");
	FUNC2("           -X        - Test DMA CRC copy.\n");
	FUNC2("           -z        - Zero device stats before test\n");
	FUNC0(EX_USAGE);
}