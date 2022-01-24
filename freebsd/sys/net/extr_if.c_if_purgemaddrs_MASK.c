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
struct ifnet {int /*<<< orphan*/  if_multiaddrs; } ;
struct ifmultiaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ifmultiaddr* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ifmultiaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,struct ifmultiaddr*,int) ; 
 int /*<<< orphan*/  ifma_link ; 
 int /*<<< orphan*/  ifmultiaddr ; 

__attribute__((used)) static void
FUNC6(struct ifnet *ifp)
{
	struct ifmultiaddr *ifma;

	FUNC3(ifp);
	while (!FUNC0(&ifp->if_multiaddrs)) {
		ifma = FUNC1(&ifp->if_multiaddrs);
		FUNC2(&ifp->if_multiaddrs, ifma, ifmultiaddr, ifma_link);
		FUNC5(ifp, ifma, 1);
	}
	FUNC4(ifp);
}