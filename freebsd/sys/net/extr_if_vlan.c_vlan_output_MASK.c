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
struct sockaddr {int dummy; } ;
struct route {int dummy; } ;
struct mbuf {int dummy; } ;
struct ifvlan {int dummy; } ;
struct ifnet {int (* if_output ) (struct ifnet*,struct mbuf*,struct sockaddr const*,struct route*) ;struct ifvlan* if_softc; } ;

/* Variables and functions */
 int ENETDOWN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct ifnet* FUNC1 (struct ifvlan*) ; 
 int /*<<< orphan*/ * FUNC2 (struct ifvlan*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 int FUNC4 (struct ifnet*,struct mbuf*,struct sockaddr const*,struct route*) ; 

__attribute__((used)) static int
FUNC5(struct ifnet *ifp, struct mbuf *m, const struct sockaddr *dst,
    struct route *ro)
{
	struct ifvlan *ifv;
	struct ifnet *p;

	FUNC0();

	ifv = ifp->if_softc;
	if (FUNC2(ifv) == NULL) {
		FUNC3(m);
		return (ENETDOWN);
	}
	p = FUNC1(ifv);
	return p->if_output(ifp, m, dst, ro);
}