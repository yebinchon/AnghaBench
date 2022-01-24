#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int sa_family; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_4__ {TYPE_1__ sin_addr; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  INADDR_ANY ; 
 char const* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char const* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr*) ; 

const char *
FUNC4(struct sockaddr *sa, struct sockaddr *mask)
{
	switch (sa->sa_family) {
	case AF_INET:
		if (mask != NULL)
			return (FUNC0(FUNC2(sa)->sin_addr.s_addr,
			    FUNC2(mask)->sin_addr.s_addr));
		else
			return (FUNC0(FUNC2(sa)->sin_addr.s_addr,
			    INADDR_ANY));
		break;
#ifdef INET6
	case AF_INET6:
		return (netname6(satosin6(sa), satosin6(mask)));
#endif /* INET6 */
	default:
		return (NULL);
	}
}