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
struct mii_data {int mii_media_status; int /*<<< orphan*/  mii_ifp; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IFM_ACTIVE ; 
 int IFM_AVALID ; 
 int LINK_STATE_DOWN ; 
 int LINK_STATE_UNKNOWN ; 
 int LINK_STATE_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mii_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(device_t dev)
{
	struct mii_data		*mii;
	device_t		parent;
	int			link_state;

	parent = FUNC1(dev);
	FUNC0(parent);

	mii = FUNC2(dev);

	if (mii->mii_media_status & IFM_AVALID) {
		if (mii->mii_media_status & IFM_ACTIVE)
			link_state = LINK_STATE_UP;
		else
			link_state = LINK_STATE_DOWN;
	} else
		link_state = LINK_STATE_UNKNOWN;
	FUNC3(mii->mii_ifp, link_state);
}