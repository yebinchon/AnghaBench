#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ifnet {int if_drv_flags; int if_flags; } ;
struct TYPE_3__ {int if_flags; int /*<<< orphan*/ * miibus; int /*<<< orphan*/  (* open ) (struct ifnet*) ;struct ifnet* ifp; } ;
typedef  TYPE_1__ cvm_oct_private_t ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int IFF_MULTICAST ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*) ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	struct ifnet *ifp;
	cvm_oct_private_t *priv;

	priv = arg;
	ifp = priv->ifp;

	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
		FUNC6(priv);

	if (priv->open != NULL)
		priv->open(ifp);

	if (((ifp->if_flags ^ priv->if_flags) & (IFF_ALLMULTI | IFF_MULTICAST | IFF_PROMISC)) != 0)
		FUNC3(ifp);

	FUNC2(ifp, FUNC0(ifp));

	FUNC1(ifp);

	if (priv->miibus != NULL)
		FUNC5(FUNC4(priv->miibus));

	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
}