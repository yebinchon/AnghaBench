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
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_TP_PACE_TABLE ; 
 int ERANGE ; 
 int NTX_SCHED ; 
 unsigned int FUNC0 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC2(struct adapter *adap, const unsigned int *pace_vals,
		     unsigned int start, unsigned int n)
{
	unsigned int vals[NTX_SCHED], i;
	unsigned int tick_ns = FUNC0(adap, 1000);

	if (n > NTX_SCHED)
	    return -ERANGE;

	/* convert values from us to dack ticks, rounding to closest value */
	for (i = 0; i < n; i++, pace_vals++) {
		vals[i] = (1000 * *pace_vals + tick_ns / 2) / tick_ns;
		if (vals[i] > 0x7ff)
			return -ERANGE;
		if (*pace_vals && vals[i] == 0)
			return -ERANGE;
	}
	for (i = 0; i < n; i++, start++)
		FUNC1(adap, A_TP_PACE_TABLE, (start << 16) | vals[i]);
	return 0;
}