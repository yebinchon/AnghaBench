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
typedef  int /*<<< orphan*/  fmt ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 

__attribute__((used)) static void
FUNC2(const char *name, double pctv, int *over)
{
	int l;
	char buf[10];
	char fmt[128];

	FUNC0(fmt, sizeof(fmt), " {:%s/%%*s}", name);
	l = FUNC0(buf, sizeof(buf), "%.0f", pctv);
	if (l == 1 && *over) {
		FUNC1(fmt, 1, buf);
		(*over)--;
	} else
		FUNC1(fmt, 2, buf);
	if (l > 2)
		(*over)++;
}