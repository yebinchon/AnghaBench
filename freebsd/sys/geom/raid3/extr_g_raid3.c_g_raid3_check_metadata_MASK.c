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
struct g_raid3_softc {size_t sc_ndisks; size_t sc_name; int sc_mediasize; int sc_sectorsize; TYPE_1__* sc_disks; } ;
struct g_raid3_metadata {size_t md_no; size_t md_all; int md_mediasize; int md_sectorsize; int md_mflags; int md_dflags; } ;
struct g_provider {int mediasize; int sectorsize; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {scalar_t__ d_state; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*,size_t,...) ; 
 int G_RAID3_DEVICE_FLAG_MASK ; 
 int G_RAID3_DEVICE_FLAG_ROUND_ROBIN ; 
 int G_RAID3_DEVICE_FLAG_VERIFY ; 
 int G_RAID3_DISK_FLAG_MASK ; 
 scalar_t__ G_RAID3_DISK_STATE_NODISK ; 

__attribute__((used)) static int
FUNC1(struct g_raid3_softc *sc, struct g_provider *pp,
    struct g_raid3_metadata *md)
{

	if (md->md_no >= sc->sc_ndisks) {
		FUNC0(1, "Invalid disk %s number (no=%u), skipping.",
		    pp->name, md->md_no);
		return (EINVAL);
	}
	if (sc->sc_disks[md->md_no].d_state != G_RAID3_DISK_STATE_NODISK) {
		FUNC0(1, "Disk %s (no=%u) already exists, skipping.",
		    pp->name, md->md_no);
		return (EEXIST);
	}
	if (md->md_all != sc->sc_ndisks) {
		FUNC0(1,
		    "Invalid '%s' field on disk %s (device %s), skipping.",
		    "md_all", pp->name, sc->sc_name);
		return (EINVAL);
	}
	if ((md->md_mediasize % md->md_sectorsize) != 0) {
		FUNC0(1, "Invalid metadata (mediasize %% sectorsize != "
		    "0) on disk %s (device %s), skipping.", pp->name,
		    sc->sc_name);
		return (EINVAL);
	}
	if (md->md_mediasize != sc->sc_mediasize) {
		FUNC0(1,
		    "Invalid '%s' field on disk %s (device %s), skipping.",
		    "md_mediasize", pp->name, sc->sc_name);
		return (EINVAL);
	}
	if ((md->md_mediasize % (sc->sc_ndisks - 1)) != 0) {
		FUNC0(1,
		    "Invalid '%s' field on disk %s (device %s), skipping.",
		    "md_mediasize", pp->name, sc->sc_name);
		return (EINVAL);
	}
	if ((sc->sc_mediasize / (sc->sc_ndisks - 1)) > pp->mediasize) {
		FUNC0(1,
		    "Invalid size of disk %s (device %s), skipping.", pp->name,
		    sc->sc_name);
		return (EINVAL);
	}
	if ((md->md_sectorsize / pp->sectorsize) < sc->sc_ndisks - 1) {
		FUNC0(1,
		    "Invalid '%s' field on disk %s (device %s), skipping.",
		    "md_sectorsize", pp->name, sc->sc_name);
		return (EINVAL);
	}
	if (md->md_sectorsize != sc->sc_sectorsize) {
		FUNC0(1,
		    "Invalid '%s' field on disk %s (device %s), skipping.",
		    "md_sectorsize", pp->name, sc->sc_name);
		return (EINVAL);
	}
	if ((sc->sc_sectorsize % pp->sectorsize) != 0) {
		FUNC0(1,
		    "Invalid sector size of disk %s (device %s), skipping.",
		    pp->name, sc->sc_name);
		return (EINVAL);
	}
	if ((md->md_mflags & ~G_RAID3_DEVICE_FLAG_MASK) != 0) {
		FUNC0(1,
		    "Invalid device flags on disk %s (device %s), skipping.",
		    pp->name, sc->sc_name);
		return (EINVAL);
	}
	if ((md->md_mflags & G_RAID3_DEVICE_FLAG_VERIFY) != 0 &&
	    (md->md_mflags & G_RAID3_DEVICE_FLAG_ROUND_ROBIN) != 0) {
		/*
		 * VERIFY and ROUND-ROBIN options are mutally exclusive.
		 */
		FUNC0(1, "Both VERIFY and ROUND-ROBIN flags exist on "
		    "disk %s (device %s), skipping.", pp->name, sc->sc_name);
		return (EINVAL);
	}
	if ((md->md_dflags & ~G_RAID3_DISK_FLAG_MASK) != 0) {
		FUNC0(1,
		    "Invalid disk flags on disk %s (device %s), skipping.",
		    pp->name, sc->sc_name);
		return (EINVAL);
	}
	return (0);
}