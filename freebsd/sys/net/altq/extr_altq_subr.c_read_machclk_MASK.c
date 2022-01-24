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
typedef  int u_int64_t ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;

/* Variables and functions */
 int MACHCLK_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*) ; 
 scalar_t__ machclk_usepcc ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 () ; 

u_int64_t
FUNC4(void)
{
	u_int64_t val;

	if (machclk_usepcc) {
#if defined(__amd64__) || defined(__i386__)
		val = FUNC3();
#else
		panic("read_machclk");
#endif
	} else {
		struct timeval tv, boottime;

		FUNC1(&tv);
		FUNC0(&boottime);
		val = (((u_int64_t)(tv.tv_sec - boottime.tv_sec) * 1000000
		    + tv.tv_usec) << MACHCLK_SHIFT);
	}
	return (val);
}