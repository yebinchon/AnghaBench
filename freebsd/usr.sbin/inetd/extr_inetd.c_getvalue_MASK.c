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
 int /*<<< orphan*/  LOG_ERR ; 
 int FUNC0 (char const*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,char const*) ; 

__attribute__((used)) static int
FUNC2(const char *arg, int *value, const char *whine)
{
	int  tmp;
	char *p;

	tmp = FUNC0(arg, &p, 0);
	if (tmp < 0 || *p) {
		FUNC1(LOG_ERR, whine, arg);
		return 1;			/* failure */
	}
	*value = tmp;
	return 0;				/* success */
}