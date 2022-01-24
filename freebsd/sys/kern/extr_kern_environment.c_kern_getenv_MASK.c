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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  KENV_MNAMELEN ; 
 scalar_t__ KENV_MVALLEN ; 
 int /*<<< orphan*/  M_KENV ; 
 int WARN_GIANTOK ; 
 int WARN_SLEEPOK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (char const*) ; 
 scalar_t__ dynamic_kenv ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 

char *
FUNC4(const char *name)
{
	char buf[KENV_MNAMELEN + 1 + KENV_MVALLEN + 1];
	char *ret;

	if (dynamic_kenv) {
		if (FUNC2(name, buf, sizeof(buf))) {
			ret = FUNC3(buf, M_KENV);
		} else {
			ret = NULL;
			FUNC0(WARN_GIANTOK | WARN_SLEEPOK, NULL,
			    "getenv");
		}
	} else
		ret = FUNC1(name);
	return (ret);
}