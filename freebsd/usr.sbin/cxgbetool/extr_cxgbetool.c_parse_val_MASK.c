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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int EINVAL ; 
 long UINT32_MAX ; 
 char* FUNC0 (char const*,long*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*) ; 

__attribute__((used)) static int
FUNC3(const char *param, const char *args[], uint32_t *val)
{
	char *p;
	long l;

	if (FUNC1(param, args[0]) != 0)
		return (EINVAL);

	p = FUNC0(args[1], &l, NULL);
	if (*p || l < 0 || l > UINT32_MAX) {
		FUNC2("parameter \"%s\" has bad \"value\" %s", args[0], args[1]);
		return (EINVAL);
	}

	*val = (uint32_t)l;
	return (0);
}