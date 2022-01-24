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
typedef  int u_int ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_DFS_DIV_DEC_CTRL ; 
 int /*<<< orphan*/  SYS_DFS_DIV_INC_CTRL ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC3(int node, int devtype, int frequency)
{
	uint64_t sysbase;
	u_int cur_freq;
	int dec_div;

	sysbase = FUNC1(node);
	cur_freq = FUNC0(sysbase, devtype);
	if (cur_freq < (frequency - 5))
		dec_div = 1;
	else
		dec_div = 0;

	for(;;) {
		if ((cur_freq >= (frequency - 5)) && (cur_freq <= frequency))
			break;
		if (dec_div)
			FUNC2(sysbase, SYS_DFS_DIV_DEC_CTRL,
			    (1 << devtype));
		else
			FUNC2(sysbase, SYS_DFS_DIV_INC_CTRL,
			    (1 << devtype));
		cur_freq = FUNC0(sysbase, devtype);
	}
	return (FUNC0(sysbase, devtype));
}