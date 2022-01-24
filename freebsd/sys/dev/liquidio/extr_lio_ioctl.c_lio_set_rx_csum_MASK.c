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
typedef  scalar_t__ uint32_t ;
struct lio {int /*<<< orphan*/  oct_dev; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int IFCAP_LRO ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_RXCSUM_IPV6 ; 
 int /*<<< orphan*/  LIO_CMD_LRO_DISABLE ; 
 int LIO_LROIPV4 ; 
 int LIO_LROIPV6 ; 
 int FUNC0 (struct ifnet*) ; 
 int FUNC1 (struct ifnet*) ; 
 struct lio* FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (struct ifnet*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct ifnet *ifp, uint32_t data)
{
	struct lio	*lio = FUNC2(ifp);
	int	ret = 0;

	if (FUNC0(ifp) & (IFCAP_RXCSUM | IFCAP_RXCSUM_IPV6)) {
		FUNC3(ifp, (IFCAP_RXCSUM | IFCAP_RXCSUM_IPV6));

		if (data) {
			/* LRO requires RXCSUM */
			if ((FUNC0(ifp) & IFCAP_LRO) &&
			    (FUNC1(ifp) & IFCAP_LRO)) {
				ret = FUNC5(ifp, LIO_CMD_LRO_DISABLE,
						      LIO_LROIPV4 |
						      LIO_LROIPV6);
				FUNC3(ifp, IFCAP_LRO);
			}
		}
	} else {
		FUNC4(lio->oct_dev, "Rx checksum offload capability not supported\n");
		return (ENODEV);
	}

	return ((ret) ? EINVAL : 0);
}