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
struct mii_phydesc {int /*<<< orphan*/  mpd_name; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mii_phydesc* FUNC2 (int /*<<< orphan*/ ,struct mii_phydesc const*) ; 

int
FUNC3(device_t dev, const struct mii_phydesc *mpd, int mrv)
{

	mpd = FUNC2(FUNC0(dev), mpd);
	if (mpd != NULL) {
		FUNC1(dev, mpd->mpd_name);
		return (mrv);
	}
	return (ENXIO);
}