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
struct g_provider {char* name; scalar_t__ acr; scalar_t__ acw; scalar_t__ ace; int /*<<< orphan*/  mediasize; int /*<<< orphan*/  stripesize; int /*<<< orphan*/  stripeoffset; int /*<<< orphan*/  sectorsize; struct g_disk_softc* private; } ;
struct g_disk_softc {scalar_t__* led; int /*<<< orphan*/  state; struct disk* dp; } ;
struct disk {int d_flags; int (* d_open ) (struct disk*) ;scalar_t__ d_maxsize; char* d_name; int d_unit; scalar_t__ d_delmaxsize; int (* d_close ) (struct disk*) ;int /*<<< orphan*/  d_mediasize; int /*<<< orphan*/  d_stripesize; int /*<<< orphan*/  d_stripeoffset; int /*<<< orphan*/  d_sectorsize; scalar_t__ d_destroyed; } ;

/* Variables and functions */
 scalar_t__ DFLTPHYS ; 
 int DISKFLAG_CANDELETE ; 
 int DISKFLAG_OPEN ; 
 int DISKFLAG_WRITE_PROTECT ; 
 int ENXIO ; 
 int EROFS ; 
 int /*<<< orphan*/  G_STATE_ACTIVE ; 
 int /*<<< orphan*/  G_T_ACCESS ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC0 (struct g_provider*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int FUNC5 (struct disk*) ; 
 int FUNC6 (struct disk*) ; 

__attribute__((used)) static int
FUNC7(struct g_provider *pp, int r, int w, int e)
{
	struct disk *dp;
	struct g_disk_softc *sc;
	int error;

	FUNC2(G_T_ACCESS, "g_disk_access(%s, %d, %d, %d)",
	    pp->name, r, w, e);
	FUNC1();
	sc = pp->private;
	if (sc == NULL || (dp = sc->dp) == NULL || dp->d_destroyed) {
		/*
		 * Allow decreasing access count even if disk is not
		 * available anymore.
		 */
		if (r <= 0 && w <= 0 && e <= 0)
			return (0);
		return (ENXIO);
	}
	r += pp->acr;
	w += pp->acw;
	e += pp->ace;
	error = 0;
	if ((pp->acr + pp->acw + pp->ace) == 0 && (r + w + e) > 0) {
		/*
		 * It would be better to defer this decision to d_open if
		 * it was able to take flags.
		 */
		if (w > 0 && (dp->d_flags & DISKFLAG_WRITE_PROTECT) != 0)
			error = EROFS;
		if (error == 0 && dp->d_open != NULL)
			error = dp->d_open(dp);
		if (bootverbose && error != 0)
			FUNC4("Opened disk %s -> %d\n", pp->name, error);
		if (error != 0)
			return (error);
		pp->sectorsize = dp->d_sectorsize;
		if (dp->d_maxsize == 0) {
			FUNC4("WARNING: Disk drive %s%d has no d_maxsize\n",
			    dp->d_name, dp->d_unit);
			dp->d_maxsize = DFLTPHYS;
		}
		if (dp->d_delmaxsize == 0) {
			if (bootverbose && dp->d_flags & DISKFLAG_CANDELETE) {
				FUNC4("WARNING: Disk drive %s%d has no "
				    "d_delmaxsize\n", dp->d_name, dp->d_unit);
			}
			dp->d_delmaxsize = dp->d_maxsize;
		}
		pp->stripeoffset = dp->d_stripeoffset;
		pp->stripesize = dp->d_stripesize;
		dp->d_flags |= DISKFLAG_OPEN;
		/*
		 * Do not invoke resize event when initial size was zero.
		 * Some disks report its size only after first opening.
		 */
		if (pp->mediasize == 0)
			pp->mediasize = dp->d_mediasize;
		else
			FUNC0(pp, dp->d_mediasize);
	} else if ((pp->acr + pp->acw + pp->ace) > 0 && (r + w + e) == 0) {
		if (dp->d_close != NULL) {
			error = dp->d_close(dp);
			if (error != 0)
				FUNC4("Closed disk %s -> %d\n",
				    pp->name, error);
		}
		sc->state = G_STATE_ACTIVE;
		if (sc->led[0] != 0)
			FUNC3(sc->led, "0");
		dp->d_flags &= ~DISKFLAG_OPEN;
	}
	return (error);
}