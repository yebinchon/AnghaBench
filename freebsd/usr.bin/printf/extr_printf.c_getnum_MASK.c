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
typedef  void* uintmax_t ;
typedef  void* intmax_t ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 void* FUNC0 () ; 
 scalar_t__ errno ; 
 char** gargv ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 void* FUNC2 (char*,char**,int /*<<< orphan*/ ) ; 
 void* FUNC3 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 

__attribute__((used)) static int
FUNC5(intmax_t *ip, uintmax_t *uip, int signedconv)
{
	char *ep;
	int rval;

	if (!*gargv) {
		*ip = *uip = 0;
		return (0);
	}
	if (**gargv == '"' || **gargv == '\'') {
		if (signedconv)
			*ip = FUNC0();
		else
			*uip = FUNC0();
		return (0);
	}
	rval = 0;
	errno = 0;
	if (signedconv)
		*ip = FUNC2(*gargv, &ep, 0);
	else
		*uip = FUNC3(*gargv, &ep, 0);
	if (ep == *gargv) {
		FUNC4("%s: expected numeric value", *gargv);
		rval = 1;
	}
	else if (*ep != '\0') {
		FUNC4("%s: not completely converted", *gargv);
		rval = 1;
	}
	if (errno == ERANGE) {
		FUNC4("%s: %s", *gargv, FUNC1(ERANGE));
		rval = 1;
	}
	++gargv;
	return (rval);
}