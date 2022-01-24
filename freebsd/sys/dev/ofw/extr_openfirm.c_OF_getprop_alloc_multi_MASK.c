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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  phandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_OFWPROP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC0 (int /*<<< orphan*/ ,char const*,void*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ssize_t
FUNC4(phandle_t package, const char *propname, int elsz, void **buf)
{
	int len;

	*buf = NULL;
	if ((len = FUNC1(package, propname)) == -1 ||
	    len % elsz != 0)
		return (-1);

	if (len > 0) {
		*buf = FUNC3(len, M_OFWPROP, M_WAITOK);
		if (FUNC0(package, propname, *buf, len) == -1) {
			FUNC2(*buf, M_OFWPROP);
			*buf = NULL;
			return (-1);
		}
	}
	return (len / elsz);
}