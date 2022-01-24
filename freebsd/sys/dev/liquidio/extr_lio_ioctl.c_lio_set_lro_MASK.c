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
 int EINVAL ; 
 int ENODEV ; 
 int IFCAP_LRO ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_RXCSUM_IPV6 ; 
 int /*<<< orphan*/  LIO_CMD_LRO_DISABLE ; 
 int /*<<< orphan*/  LIO_CMD_LRO_ENABLE ; 
 int LIO_LROIPV4 ; 
 int LIO_LROIPV6 ; 
 int FUNC0 (struct ifnet*) ; 
 int FUNC1 (struct ifnet*) ; 
 struct lio* FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ lio_hwlro ; 
 int FUNC5 (struct ifnet*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct ifnet *ifp)
{
	struct lio	*lio = FUNC2(ifp);
	int	ret = 0;

	if (!(FUNC0(ifp) & IFCAP_LRO)) {
		FUNC4(lio->oct_dev, "LRO capability not supported\n");
		return (ENODEV);
	}

	if ((!(FUNC1(ifp) & IFCAP_LRO)) &&
	    (FUNC1(ifp) & IFCAP_RXCSUM) &&
	    (FUNC1(ifp) & IFCAP_RXCSUM_IPV6)) {
		FUNC3(ifp, IFCAP_LRO);

		if (lio_hwlro)
			ret = FUNC5(ifp, LIO_CMD_LRO_ENABLE, LIO_LROIPV4 |
					      LIO_LROIPV6);

	} else if (FUNC1(ifp) & IFCAP_LRO) {
		FUNC3(ifp, IFCAP_LRO);

		if (lio_hwlro)
			ret = FUNC5(ifp, LIO_CMD_LRO_DISABLE, LIO_LROIPV4 |
					      LIO_LROIPV6);
	} else
		FUNC4(lio->oct_dev, "LRO requires RXCSUM");

	return ((ret) ? EINVAL : 0);
}