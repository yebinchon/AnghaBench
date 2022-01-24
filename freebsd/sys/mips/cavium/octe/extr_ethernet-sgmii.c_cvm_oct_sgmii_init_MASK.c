#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ifnet {scalar_t__ if_softc; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* stop ) (struct ifnet*) ;int /*<<< orphan*/  open; } ;
typedef  TYPE_1__ cvm_oct_private_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  cvm_oct_common_open ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 

int FUNC3(struct ifnet *ifp)
{
	cvm_oct_private_t *priv = (cvm_oct_private_t *)ifp->if_softc;

	if (FUNC0(ifp) != 0)
	    return ENXIO;

	priv->open = cvm_oct_common_open;
	priv->stop = cvm_oct_common_stop;
	priv->stop(ifp);

	/* FIXME: Need autoneg logic */
	return 0;
}