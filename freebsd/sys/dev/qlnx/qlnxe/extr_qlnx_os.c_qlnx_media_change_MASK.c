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
struct ifnet {scalar_t__ if_softc; } ;
struct ifmedia {int /*<<< orphan*/  ifm_media; } ;
struct TYPE_3__ {struct ifmedia media; } ;
typedef  TYPE_1__ qlnx_host_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IFM_ETHER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 

__attribute__((used)) static int
FUNC2(struct ifnet *ifp)
{
	qlnx_host_t	*ha;
	struct ifmedia	*ifm;
	int		ret = 0;

	ha = (qlnx_host_t *)ifp->if_softc;

	FUNC1(ha, "enter\n");

	ifm = &ha->media;

	if (FUNC0(ifm->ifm_media) != IFM_ETHER)
		ret = EINVAL;

	FUNC1(ha, "exit\n");

	return (ret);
}