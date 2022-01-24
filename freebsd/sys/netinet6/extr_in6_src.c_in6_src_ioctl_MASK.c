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
typedef  int u_long ;
struct TYPE_3__ {int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  sin6_addr; } ;
struct in6_addrpolicy {scalar_t__ label; scalar_t__ use; TYPE_1__ addrmask; TYPE_2__ addr; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 scalar_t__ ADDR_LABEL_NOTAPP ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
#define  SIOCAADDRCTL_POLICY 129 
#define  SIOCDADDRCTL_POLICY 128 
 int FUNC1 (struct in6_addrpolicy*) ; 
 int FUNC2 (struct in6_addrpolicy*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC4(u_long cmd, caddr_t data)
{
	struct in6_addrpolicy ent0;

	if (cmd != SIOCAADDRCTL_POLICY && cmd != SIOCDADDRCTL_POLICY)
		return (EOPNOTSUPP); /* check for safety */

	ent0 = *(struct in6_addrpolicy *)data;

	if (ent0.label == ADDR_LABEL_NOTAPP)
		return (EINVAL);
	/* check if the prefix mask is consecutive. */
	if (FUNC3(&ent0.addrmask.sin6_addr, NULL) < 0)
		return (EINVAL);
	/* clear trailing garbages (if any) of the prefix address. */
	FUNC0(&ent0.addr.sin6_addr, &ent0.addrmask.sin6_addr);
	ent0.use = 0;

	switch (cmd) {
	case SIOCAADDRCTL_POLICY:
		return (FUNC1(&ent0));
	case SIOCDADDRCTL_POLICY:
		return (FUNC2(&ent0));
	}

	return (0);		/* XXX: compromise compilers */
}