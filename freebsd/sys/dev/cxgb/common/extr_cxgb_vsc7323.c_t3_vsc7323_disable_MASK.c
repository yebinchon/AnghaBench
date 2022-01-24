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
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int MAC_DIRECTION_RX ; 
 int MAC_DIRECTION_TX ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int*,int) ; 

int FUNC3(adapter_t *adap, int port, int which)
{
	int ret;
	unsigned int v, orig;

	ret = FUNC2(adap, FUNC0(1, port, 0), &v, 1);
	if (!ret) {
		orig = v;
		if (which & MAC_DIRECTION_TX)
			v &= ~1;
		if (which & MAC_DIRECTION_RX)
			v &= ~2;
		if (v != orig)
			ret = FUNC1(adap, FUNC0(1, port, 0), v);
	}
	return ret;
}