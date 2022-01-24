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
struct ifnet {int dummy; } ;
struct iavf_sc {int /*<<< orphan*/  promisc_flags; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_VF_MULTICAST_PROMISC ; 
 int /*<<< orphan*/  FLAG_VF_UNICAST_PROMISC ; 
 int /*<<< orphan*/  IAVF_FLAG_AQ_CONFIGURE_PROMISC ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 scalar_t__ MAX_MULTICAST_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct iavf_sc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ifnet*) ; 
 struct ifnet* FUNC2 (int /*<<< orphan*/ ) ; 
 struct iavf_sc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(if_ctx_t ctx, int flags)
{
	struct iavf_sc *sc = FUNC3(ctx);
	struct ifnet	*ifp = FUNC2(ctx);

	sc->promisc_flags = 0;

	if (flags & IFF_ALLMULTI || FUNC1(ifp) >=
	    MAX_MULTICAST_ADDR)
		sc->promisc_flags |= FLAG_VF_MULTICAST_PROMISC;
	if (flags & IFF_PROMISC)
		sc->promisc_flags |= FLAG_VF_UNICAST_PROMISC;

	FUNC0(sc, IAVF_FLAG_AQ_CONFIGURE_PROMISC);

	return (0);
}