#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ifnet {scalar_t__ if_softc; } ;
struct TYPE_4__ {scalar_t__ en; } ;
struct TYPE_5__ {int /*<<< orphan*/  u64; TYPE_1__ s; } ;
typedef  TYPE_2__ cvmx_gmxx_prtx_cfg_t ;
struct TYPE_6__ {int /*<<< orphan*/  port; } ;
typedef  TYPE_3__ cvm_oct_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct ifnet *ifp)
{
	cvmx_gmxx_prtx_cfg_t gmx_cfg;
	cvm_oct_private_t *priv = (cvm_oct_private_t *)ifp->if_softc;
	int interface = FUNC2(priv->port);
	int index = FUNC1(priv->port);

	gmx_cfg.u64 = FUNC3(FUNC0(index, interface));
	gmx_cfg.s.en = 0;
	FUNC4(FUNC0(index, interface), gmx_cfg.u64);
	return 0;
}