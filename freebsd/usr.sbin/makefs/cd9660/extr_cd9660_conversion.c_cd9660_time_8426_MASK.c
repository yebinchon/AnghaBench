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
typedef  int /*<<< orphan*/  temp ;
struct tm {scalar_t__ tm_hour; scalar_t__ tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; scalar_t__ tm_sec; scalar_t__ tm_min; } ;

/* Variables and functions */
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int,int,int,int,int,int,int /*<<< orphan*/ ) ; 

void
FUNC4(unsigned char *buf, time_t tim)
{
	struct tm t;
	char temp[18];

	(void)FUNC1(&tim, &t);
	(void)FUNC3(temp, sizeof(temp), "%04i%02i%02i%02i%02i%02i%02i",
		1900+(int)t.tm_year,
		(int)t.tm_mon+1,
		(int)t.tm_mday,
		(int)t.tm_hour,
		(int)t.tm_min,
		(int)t.tm_sec,
		0);
	(void)FUNC2(buf, temp, 16);
	buf[16] = FUNC0(tim);
}