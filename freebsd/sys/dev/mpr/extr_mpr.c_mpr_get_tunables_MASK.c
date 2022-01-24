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
typedef  int /*<<< orphan*/  tmpstr ;
struct mpr_softc {int mpr_debug; int disable_msix; int disable_msi; int max_msix; int max_chains; int max_io_pages; int enable_ssu; int spinup_wait_time; int use_phynum; int max_reqframes; int max_prireqframes; int max_replyframes; int max_evtframes; char* exclude_ids; int /*<<< orphan*/  mpr_dev; } ;

/* Variables and functions */
 int DEFAULT_SPINUP_WAIT ; 
 int MPR_CHAIN_FRAMES ; 
 int MPR_EVT_REPLY_FRAMES ; 
 int MPR_FAULT ; 
 int MPR_INFO ; 
 int MPR_MAXIO_PAGES ; 
 int MPR_MSIX_MAX ; 
 int MPR_PRI_REQ_FRAMES ; 
 int MPR_REPLY_FRAMES ; 
 int MPR_REQ_FRAMES ; 
 int MPR_SSU_ENABLE_SSD_DISABLE_HDD ; 
 int /*<<< orphan*/  FUNC0 (char*,int*) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mpr_softc*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 

void
FUNC6(struct mpr_softc *sc)
{
	char tmpstr[80], mpr_debug[80];

	/* XXX default to some debugging for now */
	sc->mpr_debug = MPR_INFO | MPR_FAULT;
	sc->disable_msix = 0;
	sc->disable_msi = 0;
	sc->max_msix = MPR_MSIX_MAX;
	sc->max_chains = MPR_CHAIN_FRAMES;
	sc->max_io_pages = MPR_MAXIO_PAGES;
	sc->enable_ssu = MPR_SSU_ENABLE_SSD_DISABLE_HDD;
	sc->spinup_wait_time = DEFAULT_SPINUP_WAIT;
	sc->use_phynum = 1;
	sc->max_reqframes = MPR_REQ_FRAMES;
	sc->max_prireqframes = MPR_PRI_REQ_FRAMES;
	sc->max_replyframes = MPR_REPLY_FRAMES;
	sc->max_evtframes = MPR_EVT_REPLY_FRAMES;

	/*
	 * Grab the global variables.
	 */
	FUNC2(mpr_debug, 80);
	if (FUNC1("hw.mpr.debug_level", mpr_debug, 80) != 0)
		FUNC4(sc, mpr_debug);
	FUNC0("hw.mpr.disable_msix", &sc->disable_msix);
	FUNC0("hw.mpr.disable_msi", &sc->disable_msi);
	FUNC0("hw.mpr.max_msix", &sc->max_msix);
	FUNC0("hw.mpr.max_chains", &sc->max_chains);
	FUNC0("hw.mpr.max_io_pages", &sc->max_io_pages);
	FUNC0("hw.mpr.enable_ssu", &sc->enable_ssu);
	FUNC0("hw.mpr.spinup_wait_time", &sc->spinup_wait_time);
	FUNC0("hw.mpr.use_phy_num", &sc->use_phynum);
	FUNC0("hw.mpr.max_reqframes", &sc->max_reqframes);
	FUNC0("hw.mpr.max_prireqframes", &sc->max_prireqframes);
	FUNC0("hw.mpr.max_replyframes", &sc->max_replyframes);
	FUNC0("hw.mpr.max_evtframes", &sc->max_evtframes);

	/* Grab the unit-instance variables */
	FUNC5(tmpstr, sizeof(tmpstr), "dev.mpr.%d.debug_level",
	    FUNC3(sc->mpr_dev));
	FUNC2(mpr_debug, 80);
	if (FUNC1(tmpstr, mpr_debug, 80) != 0)
		FUNC4(sc, mpr_debug);

	FUNC5(tmpstr, sizeof(tmpstr), "dev.mpr.%d.disable_msix",
	    FUNC3(sc->mpr_dev));
	FUNC0(tmpstr, &sc->disable_msix);

	FUNC5(tmpstr, sizeof(tmpstr), "dev.mpr.%d.disable_msi",
	    FUNC3(sc->mpr_dev));
	FUNC0(tmpstr, &sc->disable_msi);

	FUNC5(tmpstr, sizeof(tmpstr), "dev.mpr.%d.max_msix",
	    FUNC3(sc->mpr_dev));
	FUNC0(tmpstr, &sc->max_msix);

	FUNC5(tmpstr, sizeof(tmpstr), "dev.mpr.%d.max_chains",
	    FUNC3(sc->mpr_dev));
	FUNC0(tmpstr, &sc->max_chains);

	FUNC5(tmpstr, sizeof(tmpstr), "dev.mpr.%d.max_io_pages",
	    FUNC3(sc->mpr_dev));
	FUNC0(tmpstr, &sc->max_io_pages);

	FUNC2(sc->exclude_ids, sizeof(sc->exclude_ids));
	FUNC5(tmpstr, sizeof(tmpstr), "dev.mpr.%d.exclude_ids",
	    FUNC3(sc->mpr_dev));
	FUNC1(tmpstr, sc->exclude_ids, sizeof(sc->exclude_ids));

	FUNC5(tmpstr, sizeof(tmpstr), "dev.mpr.%d.enable_ssu",
	    FUNC3(sc->mpr_dev));
	FUNC0(tmpstr, &sc->enable_ssu);

	FUNC5(tmpstr, sizeof(tmpstr), "dev.mpr.%d.spinup_wait_time",
	    FUNC3(sc->mpr_dev));
	FUNC0(tmpstr, &sc->spinup_wait_time);

	FUNC5(tmpstr, sizeof(tmpstr), "dev.mpr.%d.use_phy_num",
	    FUNC3(sc->mpr_dev));
	FUNC0(tmpstr, &sc->use_phynum);

	FUNC5(tmpstr, sizeof(tmpstr), "dev.mpr.%d.max_reqframes",
	    FUNC3(sc->mpr_dev));
	FUNC0(tmpstr, &sc->max_reqframes);

	FUNC5(tmpstr, sizeof(tmpstr), "dev.mpr.%d.max_prireqframes",
	    FUNC3(sc->mpr_dev));
	FUNC0(tmpstr, &sc->max_prireqframes);

	FUNC5(tmpstr, sizeof(tmpstr), "dev.mpr.%d.max_replyframes",
	    FUNC3(sc->mpr_dev));
	FUNC0(tmpstr, &sc->max_replyframes);

	FUNC5(tmpstr, sizeof(tmpstr), "dev.mpr.%d.max_evtframes",
	    FUNC3(sc->mpr_dev));
	FUNC0(tmpstr, &sc->max_evtframes);
}