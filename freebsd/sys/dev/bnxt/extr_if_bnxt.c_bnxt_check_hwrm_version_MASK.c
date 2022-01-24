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
struct bnxt_softc {TYPE_1__* ver_info; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  hwrm_if_ver; int /*<<< orphan*/  hwrm_if_update; int /*<<< orphan*/  hwrm_min_update; int /*<<< orphan*/  hwrm_if_minor; int /*<<< orphan*/  hwrm_min_minor; int /*<<< orphan*/  hwrm_if_major; int /*<<< orphan*/  hwrm_min_major; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC2(struct bnxt_softc *softc)
{
	char buf[16];

	FUNC1(buf, "%hhu.%hhu.%hhu", softc->ver_info->hwrm_min_major,
	    softc->ver_info->hwrm_min_minor, softc->ver_info->hwrm_min_update);
	if (softc->ver_info->hwrm_min_major > softc->ver_info->hwrm_if_major) {
		FUNC0(softc->dev,
		    "WARNING: HWRM version %s is too old (older than %s)\n",
		    softc->ver_info->hwrm_if_ver, buf);
		return false;
	}
	else if(softc->ver_info->hwrm_min_major ==
	    softc->ver_info->hwrm_if_major) {
		if (softc->ver_info->hwrm_min_minor >
		    softc->ver_info->hwrm_if_minor) {
			FUNC0(softc->dev,
			    "WARNING: HWRM version %s is too old (older than %s)\n",
			    softc->ver_info->hwrm_if_ver, buf);
			return false;
		}
		else if (softc->ver_info->hwrm_min_minor ==
		    softc->ver_info->hwrm_if_minor) {
			if (softc->ver_info->hwrm_min_update >
			    softc->ver_info->hwrm_if_update) {
				FUNC0(softc->dev,
				    "WARNING: HWRM version %s is too old (older than %s)\n",
				    softc->ver_info->hwrm_if_ver, buf);
				return false;
			}
		}
	}
	return true;
}