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
struct ifmedia {int /*<<< orphan*/  ifm_media; } ;
struct lio {int /*<<< orphan*/  oct_dev; struct ifmedia ifmedia; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IFM_10G_CX4 132 
#define  IFM_10G_SR 131 
#define  IFM_10G_T 130 
#define  IFM_10G_TWINAX 129 
#define  IFM_AUTO 128 
 scalar_t__ IFM_ETHER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct lio* FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC4(struct ifnet *ifp)
{
	struct lio	*lio = FUNC2(ifp);
	struct ifmedia	*ifm;

	ifm = &lio->ifmedia;

	/* We only support Ethernet media type. */
	if (FUNC1(ifm->ifm_media) != IFM_ETHER)
		return (EINVAL);

	switch (FUNC0(ifm->ifm_media)) {
	case IFM_AUTO:
		break;
	case IFM_10G_CX4:
	case IFM_10G_SR:
	case IFM_10G_T:
	case IFM_10G_TWINAX:
	default:
		/* We don't support changing the media type. */
		FUNC3(lio->oct_dev, "Invalid media type (%d)\n",
			    FUNC0(ifm->ifm_media));
		return (EINVAL);
	}

	return (0);
}