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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

void
FUNC2(uint64_t nae_base, int block, int port)
{
	int hwport = (block * 4) + (port & 0x3);

	/* program L2 and L3 header extraction for each port */
	/* enable ethernet L2 mode on port */
	FUNC0(nae_base, hwport, 0, 0, 0, 0, 0, 1);

	/* l2proto and ethtype included in l3cam */
	FUNC1(nae_base, hwport, 1, 0);
}