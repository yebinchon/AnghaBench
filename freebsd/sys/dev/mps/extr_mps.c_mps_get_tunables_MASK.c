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
struct mps_softc {int mps_debug; int disable_msix; int disable_msi; int max_msix; int max_chains; int max_io_pages; int enable_ssu; int spinup_wait_time; int use_phynum; int max_reqframes; int max_prireqframes; int max_replyframes; int max_evtframes; char* exclude_ids; int /*<<< orphan*/  mps_dev; } ;

/* Variables and functions */
 int DEFAULT_SPINUP_WAIT ; 
 int MPS_CHAIN_FRAMES ; 
 int MPS_EVT_REPLY_FRAMES ; 
 int MPS_FAULT ; 
 int MPS_INFO ; 
 int MPS_MAXIO_PAGES ; 
 int MPS_MSIX_MAX ; 
 int MPS_PRI_REQ_FRAMES ; 
 int MPS_REPLY_FRAMES ; 
 int MPS_REQ_FRAMES ; 
 int MPS_SSU_ENABLE_SSD_DISABLE_HDD ; 
 int /*<<< orphan*/  FUNC0 (char*,int*) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mps_softc*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 

void
FUNC6(struct mps_softc *sc)
{
	char tmpstr[80], mps_debug[80];

	/* XXX default to some debugging for now */
	sc->mps_debug = MPS_INFO|MPS_FAULT;
	sc->disable_msix = 0;
	sc->disable_msi = 0;
	sc->max_msix = MPS_MSIX_MAX;
	sc->max_chains = MPS_CHAIN_FRAMES;
	sc->max_io_pages = MPS_MAXIO_PAGES;
	sc->enable_ssu = MPS_SSU_ENABLE_SSD_DISABLE_HDD;
	sc->spinup_wait_time = DEFAULT_SPINUP_WAIT;
	sc->use_phynum = 1;
	sc->max_reqframes = MPS_REQ_FRAMES;
	sc->max_prireqframes = MPS_PRI_REQ_FRAMES;
	sc->max_replyframes = MPS_REPLY_FRAMES;
	sc->max_evtframes = MPS_EVT_REPLY_FRAMES;

	/*
	 * Grab the global variables.
	 */
	FUNC2(mps_debug, 80);
	if (FUNC1("hw.mps.debug_level", mps_debug, 80) != 0)
		FUNC4(sc, mps_debug);
	FUNC0("hw.mps.disable_msix", &sc->disable_msix);
	FUNC0("hw.mps.disable_msi", &sc->disable_msi);
	FUNC0("hw.mps.max_msix", &sc->max_msix);
	FUNC0("hw.mps.max_chains", &sc->max_chains);
	FUNC0("hw.mps.max_io_pages", &sc->max_io_pages);
	FUNC0("hw.mps.enable_ssu", &sc->enable_ssu);
	FUNC0("hw.mps.spinup_wait_time", &sc->spinup_wait_time);
	FUNC0("hw.mps.use_phy_num", &sc->use_phynum);
	FUNC0("hw.mps.max_reqframes", &sc->max_reqframes);
	FUNC0("hw.mps.max_prireqframes", &sc->max_prireqframes);
	FUNC0("hw.mps.max_replyframes", &sc->max_replyframes);
	FUNC0("hw.mps.max_evtframes", &sc->max_evtframes);

	/* Grab the unit-instance variables */
	FUNC5(tmpstr, sizeof(tmpstr), "dev.mps.%d.debug_level",
	    FUNC3(sc->mps_dev));
	FUNC2(mps_debug, 80);
	if (FUNC1(tmpstr, mps_debug, 80) != 0)
		FUNC4(sc, mps_debug);

	FUNC5(tmpstr, sizeof(tmpstr), "dev.mps.%d.disable_msix",
	    FUNC3(sc->mps_dev));
	FUNC0(tmpstr, &sc->disable_msix);

	FUNC5(tmpstr, sizeof(tmpstr), "dev.mps.%d.disable_msi",
	    FUNC3(sc->mps_dev));
	FUNC0(tmpstr, &sc->disable_msi);

	FUNC5(tmpstr, sizeof(tmpstr), "dev.mps.%d.max_msix",
	    FUNC3(sc->mps_dev));
	FUNC0(tmpstr, &sc->max_msix);

	FUNC5(tmpstr, sizeof(tmpstr), "dev.mps.%d.max_chains",
	    FUNC3(sc->mps_dev));
	FUNC0(tmpstr, &sc->max_chains);

	FUNC5(tmpstr, sizeof(tmpstr), "dev.mps.%d.max_io_pages",
	    FUNC3(sc->mps_dev));
	FUNC0(tmpstr, &sc->max_io_pages);

	FUNC2(sc->exclude_ids, sizeof(sc->exclude_ids));
	FUNC5(tmpstr, sizeof(tmpstr), "dev.mps.%d.exclude_ids",
	    FUNC3(sc->mps_dev));
	FUNC1(tmpstr, sc->exclude_ids, sizeof(sc->exclude_ids));

	FUNC5(tmpstr, sizeof(tmpstr), "dev.mps.%d.enable_ssu",
	    FUNC3(sc->mps_dev));
	FUNC0(tmpstr, &sc->enable_ssu);

	FUNC5(tmpstr, sizeof(tmpstr), "dev.mps.%d.spinup_wait_time",
	    FUNC3(sc->mps_dev));
	FUNC0(tmpstr, &sc->spinup_wait_time);

	FUNC5(tmpstr, sizeof(tmpstr), "dev.mps.%d.use_phy_num",
	    FUNC3(sc->mps_dev));
	FUNC0(tmpstr, &sc->use_phynum);

	FUNC5(tmpstr, sizeof(tmpstr), "dev.mps.%d.max_reqframes",
	    FUNC3(sc->mps_dev));
	FUNC0(tmpstr, &sc->max_reqframes);

	FUNC5(tmpstr, sizeof(tmpstr), "dev.mps.%d.max_prireqframes",
	    FUNC3(sc->mps_dev));
	FUNC0(tmpstr, &sc->max_prireqframes);

	FUNC5(tmpstr, sizeof(tmpstr), "dev.mps.%d.max_replyframes",
	    FUNC3(sc->mps_dev));
	FUNC0(tmpstr, &sc->max_replyframes);

	FUNC5(tmpstr, sizeof(tmpstr), "dev.mps.%d.max_evtframes",
	    FUNC3(sc->mps_dev));
	FUNC0(tmpstr, &sc->max_evtframes);

}