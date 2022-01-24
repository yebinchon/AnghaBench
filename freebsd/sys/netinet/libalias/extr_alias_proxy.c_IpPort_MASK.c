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
typedef  int u_int ;
struct servent {int /*<<< orphan*/  s_port; } ;

/* Variables and functions */
 int IPPROTO_TCP ; 
 int IPPROTO_UDP ; 
 struct servent* FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,char*,int*) ; 

__attribute__((used)) static int
FUNC3(char *s, int proto, int *port)
{
	int n;

	n = FUNC2(s, "%d", port);
	if (n != 1)
#ifndef _KERNEL	/* XXX: we accept only numeric ports in kernel */
	{
		struct servent *se;

		if (proto == IPPROTO_TCP)
			se = FUNC0(s, "tcp");
		else if (proto == IPPROTO_UDP)
			se = FUNC0(s, "udp");
		else
			return (-1);

		if (se == NULL)
			return (-1);

		*port = (u_int) FUNC1(se->s_port);
	}
#else
		return (-1);
#endif
	return (0);
}