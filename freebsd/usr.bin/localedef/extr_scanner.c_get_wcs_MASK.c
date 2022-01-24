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
typedef  int /*<<< orphan*/  wchar_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 scalar_t__ wideidx ; 
 int /*<<< orphan*/ * widestr ; 
 scalar_t__ widesz ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

wchar_t *
FUNC2(void)
{
	wchar_t *ws = widestr;
	wideidx = 0;
	widestr = NULL;
	widesz = 0;
	if (ws == NULL) {
		if ((ws = FUNC0(L"")) == NULL) {
			FUNC1("out of memory");
		}
	}
	return (ws);
}