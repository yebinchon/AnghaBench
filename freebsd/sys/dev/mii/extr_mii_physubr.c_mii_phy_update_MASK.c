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
struct mii_softc {scalar_t__ mii_media_active; scalar_t__ mii_media_status; int /*<<< orphan*/  mii_dev; struct mii_data* mii_pdata; } ;
struct mii_data {scalar_t__ mii_media_active; scalar_t__ mii_media_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int MII_MEDIACHG ; 

void
FUNC2(struct mii_softc *sc, int cmd)
{
	struct mii_data *mii = sc->mii_pdata;

	if (sc->mii_media_active != mii->mii_media_active ||
	    cmd == MII_MEDIACHG) {
		FUNC1(sc->mii_dev);
		sc->mii_media_active = mii->mii_media_active;
	}
	if (sc->mii_media_status != mii->mii_media_status) {
		FUNC0(sc->mii_dev);
		sc->mii_media_status = mii->mii_media_status;
	}
}