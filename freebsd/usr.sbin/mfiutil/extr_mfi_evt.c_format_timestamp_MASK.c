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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  tm ;
typedef  int time_t ;
struct tm {int tm_mday; int tm_year; } ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tm*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int FUNC2 (struct tm*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *
FUNC5(uint32_t timestamp)
{
	static char buffer[32];
	static time_t base;
	time_t t;
	struct tm tm;

	if ((timestamp & 0xff000000) == 0xff000000) {
		FUNC3(buffer, sizeof(buffer), "boot + %us", timestamp &
		    0x00ffffff);
		return (buffer);
	}

	if (base == 0) {
		/* Compute 00:00 Jan 1, 2000 offset. */
		FUNC0(&tm, sizeof(tm));
		tm.tm_mday = 1;
		tm.tm_year = (2000 - 1900);
		base = FUNC2(&tm);
	}
	if (base == -1) {
		FUNC3(buffer, sizeof(buffer), "%us", timestamp);
		return (buffer);
	}
	t = base + timestamp;
	FUNC4(buffer, sizeof(buffer), "%+", FUNC1(&t));
	return (buffer);
}