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
struct mwl_hal_priv {int mh_debug; int /*<<< orphan*/  mh_dev; } ;
struct mwl_hal {int dummy; } ;

/* Variables and functions */
 struct mwl_hal_priv* FUNC0 (struct mwl_hal*) ; 
 int MWL_HAL_DEBUG_CMDDONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mwl_hal_priv*,int) ; 

void
FUNC3(struct mwl_hal *mh0)
{
#if 0
	struct mwl_hal_priv *mh = MWLPRIV(mh0);

	if (mh->mh_debug & MWL_HAL_DEBUG_CMDDONE) {
		device_printf(mh->mh_dev, "cmd done interrupt:\n");
		dumpresult(mh, 1);
	}
#endif
}