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
struct lio {int /*<<< orphan*/  oct_dev; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSUM_IP6_TSO ; 
 int EINVAL ; 
 int IFCAP_TSO6 ; 
 int FUNC0 (struct ifnet*) ; 
 int FUNC1 (struct ifnet*) ; 
 struct lio* FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC6(struct ifnet *ifp)
{
	struct lio	*lio = FUNC2(ifp);

	if (FUNC0(ifp) & IFCAP_TSO6) {
		FUNC4(ifp, IFCAP_TSO6);
		if (FUNC1(ifp) & IFCAP_TSO6)
			FUNC3(ifp, CSUM_IP6_TSO, 0);
		else
			FUNC3(ifp, 0, CSUM_IP6_TSO);
	} else {
		FUNC5(lio->oct_dev, "TSO6 capability not supported\n");
		return (EINVAL);
	}

	return (0);
}