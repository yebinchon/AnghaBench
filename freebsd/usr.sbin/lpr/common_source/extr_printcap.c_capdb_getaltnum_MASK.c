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
 int FUNC0 (char*,char const*,long*) ; 

__attribute__((used)) static int
FUNC1(char *bp, const char *shrt, const char *lng, long dflt,
    long *result)
{
	int status;

	status = FUNC0(bp, lng, result);
	if (status >= 0)
		return status;
	status = FUNC0(bp, shrt, result);
	if (status >= 0)
		return status;
	*result = dflt;
	return 0;
}