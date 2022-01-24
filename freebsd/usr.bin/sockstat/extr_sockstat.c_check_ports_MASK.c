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
struct sock {scalar_t__ family; struct addr* faddr; struct addr* laddr; } ;
struct addr {int /*<<< orphan*/  address; struct addr* next; } ;
struct TYPE_4__ {int /*<<< orphan*/  sin_port; } ;
struct TYPE_3__ {int /*<<< orphan*/  sin6_port; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ports ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct sock *s)
{
	int port;
	struct addr *addr;

	if (ports == NULL)
		return (1);
	if ((s->family != AF_INET) && (s->family != AF_INET6))
		return (1);
	for (addr = s->laddr; addr != NULL; addr = addr->next) {
		if (s->family == AF_INET)
			port = FUNC1(FUNC2(&addr->address)->sin_port);
		else
			port = FUNC1(FUNC3(&addr->address)->sin6_port);
		if (FUNC0(port))
			return (1);
	}
	for (addr = s->faddr; addr != NULL; addr = addr->next) {
		if (s->family == AF_INET)
			port = FUNC1(FUNC2(&addr->address)->sin_port);
		else
			port = FUNC1(FUNC3(&addr->address)->sin6_port);
		if (FUNC0(port))
			return (1);
	}
	return (0);
}