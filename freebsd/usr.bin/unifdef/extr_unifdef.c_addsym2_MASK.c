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
 scalar_t__ MAXSYMS ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (char const**) ; 
 int* ignore ; 
 scalar_t__ nsyms ; 
 char const** symname ; 
 char const** value ; 

__attribute__((used)) static void
FUNC3(bool ignorethis, const char *sym, const char *val)
{
	const char *cp = sym;
	int symind;

	symind = FUNC2(&cp);
	if (symind < 0) {
		if (nsyms >= MAXSYMS)
			FUNC1(2, "too many symbols");
		symind = nsyms++;
	}
	ignore[symind] = ignorethis;
	symname[symind] = sym;
	value[symind] = val;
	FUNC0("addsym", symind);
}