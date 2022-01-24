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
struct miibus_ivars {int /*<<< orphan*/  ifp; int /*<<< orphan*/  ifmedia_sts; int /*<<< orphan*/  ifmedia_upd; } ;
struct mii_data {int /*<<< orphan*/  mii_phys; int /*<<< orphan*/  mii_ifp; int /*<<< orphan*/  mii_media; } ;
struct mii_attach_args {struct mii_data* mii_data; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  IFCAP_LINKSTATE ; 
 int /*<<< orphan*/  IFM_IMASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 struct mii_data* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct miibus_ivars	*ivars;
	struct mii_attach_args	*ma;
	struct mii_data		*mii;
	device_t		*children;
	int			i, nchildren;

	mii = FUNC4(dev);
	if (FUNC2(dev, &children, &nchildren) == 0) {
		for (i = 0; i < nchildren; i++) {
			ma = FUNC3(children[i]);
			ma->mii_data = mii;
		}
		FUNC6(children, M_TEMP);
	}
	if (nchildren == 0) {
		FUNC5(dev, "cannot get children\n");
		return (ENXIO);
	}
	ivars = FUNC3(dev);
	FUNC9(&mii->mii_media, IFM_IMASK, ivars->ifmedia_upd,
	    ivars->ifmedia_sts);
	mii->mii_ifp = ivars->ifp;
	FUNC7(mii->mii_ifp, IFCAP_LINKSTATE, 0);
	FUNC8(mii->mii_ifp, IFCAP_LINKSTATE, 0);
	FUNC0(&mii->mii_phys);

	return (FUNC1(dev));
}