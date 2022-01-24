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
typedef  scalar_t__ wchar_t ;
typedef  int /*<<< orphan*/  ctype_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  INTERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 
 scalar_t__ last_ctype ; 

void
FUNC3(wchar_t end)
{
	ctype_node_t	*ctn;
	wchar_t		cur;

	if (end < last_ctype) {
		FUNC1("malformed character range (%u ... %u))",
		    last_ctype, end);
		return;
	}
	for (cur = last_ctype + 1; cur <= end; cur++) {
		if ((ctn = FUNC2(cur)) == NULL) {
			INTERR;
			return;
		}
		FUNC0(ctn);
	}
	last_ctype = end;

}