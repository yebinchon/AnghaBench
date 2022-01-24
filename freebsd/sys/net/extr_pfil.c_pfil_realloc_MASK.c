#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;
struct TYPE_5__ {struct mbuf** m; int /*<<< orphan*/  mem; } ;
typedef  TYPE_1__ pfil_packet_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int PFIL_MEMPTR ; 
 struct mbuf* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifnet*,int /*<<< orphan*/ *) ; 
 TYPE_1__ FUNC3 (TYPE_1__) ; 

int
FUNC4(pfil_packet_t *p, int flags, struct ifnet *ifp)
{
	struct mbuf *m;

	FUNC0(flags & PFIL_MEMPTR);

	if ((m = FUNC2(p->mem, FUNC1(flags), 0, ifp, NULL)) == NULL)
		return (ENOMEM);
	*p = FUNC3(*p);
	*p->m = m;

	return (0);
}