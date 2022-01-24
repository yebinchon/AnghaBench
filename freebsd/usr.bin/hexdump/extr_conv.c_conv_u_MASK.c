#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
struct TYPE_3__ {char* cchar; char* fmt; } ;
typedef  TYPE_1__ PR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ odmode ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void
FUNC2(PR *pr, u_char *p)
{
	static char const * list[] = {
		"nul", "soh", "stx", "etx", "eot", "enq", "ack", "bel",
		 "bs",  "ht",  "lf",  "vt",  "ff",  "cr",  "so",  "si",
		"dle", "dc1", "dc2", "dc3", "dc4", "nak", "syn", "etb",
		"can",  "em", "sub", "esc",  "fs",  "gs",  "rs",  "us",
	};

						/* od used nl, not lf */
	if (*p <= 0x1f) {
		*pr->cchar = 's';
		if (odmode && *p == 0x0a)
			(void)FUNC1(pr->fmt, "nl");
		else
			(void)FUNC1(pr->fmt, list[*p]);
	} else if (*p == 0x7f) {
		*pr->cchar = 's';
		(void)FUNC1(pr->fmt, "del");
	} else if (odmode && *p == 0x20) {	/* od replaced space with sp */
		*pr->cchar = 's';
		(void)FUNC1(pr->fmt, " sp");
	} else if (FUNC0(*p)) {
		*pr->cchar = 'c';
		(void)FUNC1(pr->fmt, *p);
	} else {
		*pr->cchar = 'x';
		(void)FUNC1(pr->fmt, (int)*p);
	}
}