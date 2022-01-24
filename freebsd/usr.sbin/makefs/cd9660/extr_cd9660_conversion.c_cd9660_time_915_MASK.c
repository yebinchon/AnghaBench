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
typedef  int /*<<< orphan*/  time_t ;
struct tm {unsigned char tm_year; int tm_mon; unsigned char tm_mday; unsigned char tm_hour; unsigned char tm_min; unsigned char tm_sec; } ;

/* Variables and functions */
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct tm*) ; 

void
FUNC2(unsigned char *buf, time_t tim)
{
	struct tm t;

	(void)FUNC1(&tim, &t);
	buf[0] = t.tm_year;
	buf[1] = t.tm_mon+1;
	buf[2] = t.tm_mday;
	buf[3] = t.tm_hour;
	buf[4] = t.tm_min;
	buf[5] = t.tm_sec;
	buf[6] = FUNC0(tim);
}