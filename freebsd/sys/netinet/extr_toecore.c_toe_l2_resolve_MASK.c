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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct toedev {int dummy; } ;
struct sockaddr {int sa_family; } ;
struct ifnet {scalar_t__ if_type; scalar_t__ if_pcp; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int EPROTONOSUPPORT ; 
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ IFNET_PCP_NONE ; 
 scalar_t__ IFT_L2VLAN ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int*) ; 
 int FUNC3 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sockaddr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sockaddr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC5(struct toedev *tod, struct ifnet *ifp, struct sockaddr *sa,
    uint8_t *lladdr, uint16_t *vtag)
{
	int rc;
	uint16_t vid, pcp;

	switch (sa->sa_family) {
#ifdef INET
	case AF_INET:
		rc = arpresolve(ifp, 0, NULL, sa, lladdr, NULL, NULL);
		break;
#endif
#ifdef INET6
	case AF_INET6:
		rc = nd6_resolve(ifp, 0, NULL, sa, lladdr, NULL, NULL);
		break;
#endif
	default:
		return (EPROTONOSUPPORT);
	}

	if (rc == 0) {
		vid = 0xfff;
		pcp = 0;
		if (ifp->if_type == IFT_L2VLAN) {
			FUNC2(ifp, &vid);
			FUNC1(ifp, &pcp);
		} else if (ifp->if_pcp != IFNET_PCP_NONE) {
			vid = 0;
			pcp = ifp->if_pcp;
		}
		*vtag = FUNC0(vid, pcp, 0);
	}

	return (rc);
}