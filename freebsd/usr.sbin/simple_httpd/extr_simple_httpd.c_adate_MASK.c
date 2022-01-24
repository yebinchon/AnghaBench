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
struct tm {int tm_hour; int tm_min; int tm_sec; int tm_mday; int tm_mon; int tm_year; } ;

/* Variables and functions */
 struct tm* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

char *
FUNC3(void)
{
	static char out[50];
	time_t now;
	struct tm *t;
	FUNC2(&now);
	t = FUNC0(&now);
	FUNC1(out, "%02d:%02d:%02d %02d/%02d/%02d",
		     t->tm_hour, t->tm_min, t->tm_sec,
		     t->tm_mday, t->tm_mon+1, t->tm_year );
	return out;
}