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
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/ * if_softc; } ;
typedef  int /*<<< orphan*/  cvm_oct_private_t ;

/* Variables and functions */
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int FUNC0 (struct mbuf*,struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 

__attribute__((used)) static int
FUNC2(struct ifnet *ifp, struct mbuf *m)
{
	cvm_oct_private_t *priv;

	priv = ifp->if_softc;

	if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
	    IFF_DRV_RUNNING) {
		FUNC1(m);
		return (0);
	}

	return (FUNC0(m, ifp));
}