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
typedef  int /*<<< orphan*/  WINDOW ;

/* Variables and functions */
 int pmcstat_skiplink ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 

int
FUNC1(int c, void *arg)
{
	WINDOW *w;

	w = (WINDOW *)arg;

	switch (c) {
	case 'f':
		pmcstat_skiplink = !pmcstat_skiplink;
		FUNC0(w, "skip empty link %s",
		    pmcstat_skiplink ? "on" : "off");
		break;
	}

	return 0;
}