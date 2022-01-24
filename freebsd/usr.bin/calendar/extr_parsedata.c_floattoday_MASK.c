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

/* Variables and functions */
 double SECSPERDAY ; 
 int SECSPERHOUR ; 
 int SECSPERMINUTE ; 
 int** cumdaytab ; 
 double FUNC0 (double) ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,int,int,int,int) ; 

__attribute__((used)) static char *
FUNC3(int year, double f)
{
	static char buf[100];
	int i, m, d, hh, mm, ss;
	int *cumdays = cumdaytab[FUNC1(year)];

	for (i = 0; 1 + cumdays[i] < f; i++)
		;
	m = --i;
	d = FUNC0(f - 1 - cumdays[i]);
	f -= FUNC0(f);
	i = f * SECSPERDAY;

	hh = i / SECSPERHOUR;
	i %= SECSPERHOUR;
	mm = i / SECSPERMINUTE;
	i %= SECSPERMINUTE;
	ss = i;

	FUNC2(buf, "%02d-%02d %02d:%02d:%02d", m, d, hh, mm, ss);
	return (buf);
}