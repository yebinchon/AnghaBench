#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ifnet {scalar_t__ if_softc; } ;
struct TYPE_9__ {int /*<<< orphan*/  link_up; } ;
struct TYPE_10__ {TYPE_2__ s; } ;
typedef  TYPE_3__ cvmx_helper_link_info_t ;
struct TYPE_8__ {int en; } ;
struct TYPE_11__ {int /*<<< orphan*/  u64; TYPE_1__ s; } ;
typedef  TYPE_4__ cvmx_gmxx_prtx_cfg_t ;
struct TYPE_12__ {int /*<<< orphan*/  port; int /*<<< orphan*/ * miibus; } ;
typedef  TYPE_5__ cvm_oct_private_t ;
struct TYPE_13__ {scalar_t__ board_type; } ;

/* Variables and functions */
 scalar_t__ CVMX_BOARD_TYPE_SIM ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int /*<<< orphan*/  LINK_STATE_UP ; 
 TYPE_3__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*,int /*<<< orphan*/ ) ; 

int FUNC8(struct ifnet *ifp)
{
	cvmx_gmxx_prtx_cfg_t gmx_cfg;
	cvm_oct_private_t *priv = (cvm_oct_private_t *)ifp->if_softc;
	int interface = FUNC2(priv->port);
	int index = FUNC1(priv->port);
	cvmx_helper_link_info_t link_info;

	gmx_cfg.u64 = FUNC4(FUNC0(index, interface));
	gmx_cfg.s.en = 1;
	FUNC6(FUNC0(index, interface), gmx_cfg.u64);

	/*
	 * Set the link state unless we are using MII.
	 */
        if (FUNC5()->board_type != CVMX_BOARD_TYPE_SIM && priv->miibus == NULL) {
             link_info = FUNC3(priv->port);
             if (!link_info.s.link_up)  
		FUNC7(ifp, LINK_STATE_DOWN);
	     else
		FUNC7(ifp, LINK_STATE_UP);
        }

	return 0;
}