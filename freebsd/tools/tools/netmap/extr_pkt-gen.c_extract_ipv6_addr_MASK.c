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
typedef  int uint8_t ;
typedef  scalar_t__ uint16_t ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct in6_addr*) ; 
 char* FUNC1 (char*,char) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(char *name, struct in6_addr *addr, uint16_t *port,
    uint8_t *group)
{
	char *pp;

	/*
	 * We accept IPv6 address in the following form:
	 *  group@[2001:DB8::1001]:port	(w/ brackets and port)
	 *  group@[2001:DB8::1]		(w/ brackets and w/o port)
	 *  group@2001:DB8::1234	(w/o brackets and w/o port)
	 */
	pp = FUNC1(name, '@');
	if (pp != NULL) {
		*pp++ = '\0';
		*group = (uint8_t)FUNC2(name, NULL, 0);
		if (*group > 7)
			*group = 7;
		name = pp;
	}
	if (name[0] == '[')
		name++;
	pp = FUNC1(name, ']');
	if (pp != NULL)
		*pp++ = '\0';
	if (pp != NULL && *pp != ':')
		pp = NULL;
	if (pp != NULL) {	/* do we have ports ? */
		*pp++ = '\0';
		*port = (uint16_t)FUNC2(pp, NULL, 0);
	}
	FUNC0(AF_INET6, name, addr);
}