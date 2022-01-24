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
struct bhnd_chipid {scalar_t__ chip_id; scalar_t__ chip_pkg; } ;
struct bcm_platform {struct bhnd_chipid cid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ BHND_CHIPID_BCM4706 ; 
 scalar_t__ BHND_COREID_4706_GMAC ; 
 scalar_t__ BHND_PKGID_BCM4706L ; 
 struct bcm_platform* FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(device_t dev, device_t child)
{
	struct bcm_platform	*bp;
	struct bhnd_chipid	*cid;

	bp = FUNC0();
	cid = &bp->cid;

	/* The BCM4706 low-cost package leaves secondary GMAC cores
	 * floating */
	if (cid->chip_id == BHND_CHIPID_BCM4706 &&
	    cid->chip_pkg == BHND_PKGID_BCM4706L &&
	    FUNC2(child) == BHND_COREID_4706_GMAC &&
	    FUNC1(child) != 0)
	{
		return (true);
	}

	return (false);
}