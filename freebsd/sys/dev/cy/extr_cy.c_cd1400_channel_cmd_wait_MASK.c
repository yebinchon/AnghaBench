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
struct timeval {int tv_sec; long tv_usec; } ;
struct com_s {int /*<<< orphan*/  unit; } ;

/* Variables and functions */
 int /*<<< orphan*/  CD1400_CCR ; 
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ FUNC0 (struct com_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*) ; 

__attribute__((used)) static void
FUNC3(struct com_s *com)
{
	struct timeval	start;
	struct timeval	tv;
	long		usec;

	if (FUNC0(com, CD1400_CCR) == 0)
		return;
	FUNC2(&start);
	for (;;) {
		if (FUNC0(com, CD1400_CCR) == 0)
			return;
		FUNC2(&tv);
		usec = 1000000 * (tv.tv_sec - start.tv_sec) +
		    tv.tv_usec - start.tv_usec;
		if (usec >= 5000) {
			FUNC1(LOG_ERR,
			    "cy%d: channel command timeout (%ld usec)\n",
			    com->unit, usec);
			return;
		}
	}
}