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
struct an_softc {int /*<<< orphan*/  an_mtx; int /*<<< orphan*/  an_dev; scalar_t__ mpi350; int /*<<< orphan*/  port_res; } ;
struct an_ltv_ssidlist_new {int an_len; TYPE_1__* an_entry; int /*<<< orphan*/  an_type; } ;
struct an_ltv_gen {int dummy; } ;
typedef  int /*<<< orphan*/  ssid ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  an_ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  AN_CMD_READCFG ; 
 int /*<<< orphan*/  AN_DEF_SSID ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int AN_IOSIZ ; 
 int /*<<< orphan*/  FUNC2 (struct an_softc*) ; 
 int /*<<< orphan*/  AN_RID_SSIDLIST ; 
 int /*<<< orphan*/  FUNC3 (struct an_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct an_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct an_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct an_softc*,struct an_ltv_gen*) ; 
 int /*<<< orphan*/  FUNC8 (struct an_softc*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct an_softc* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC16(device_t dev)
{
	struct an_softc *sc = FUNC11(dev);
	struct an_ltv_ssidlist_new	ssid;
	int	error;

	FUNC9((char *)&ssid, sizeof(ssid));

	error = FUNC5(dev, 0, AN_IOSIZ);
	if (error != 0)
		return (0);

	/* can't do autoprobing */
	if (FUNC14(sc->port_res) == -1)
		return(0);

	/*
	 * We need to fake up a softc structure long enough
	 * to be able to issue commands and call some of the
	 * other routines.
	 */
	ssid.an_len = sizeof(ssid);
	ssid.an_type = AN_RID_SSIDLIST;

	/* Make sure interrupts are disabled. */
	sc->mpi350 = 0;
	FUNC4(sc, FUNC1(sc->mpi350), 0);
	FUNC4(sc, FUNC0(sc->mpi350), 0xFFFF);

	sc->an_dev = dev;
	FUNC13(&sc->an_mtx, FUNC10(dev), MTX_NETWORK_LOCK,
	    MTX_DEF);
	FUNC2(sc);
	FUNC8(sc);

	if (FUNC6(sc, AN_CMD_READCFG, 0)) {
		FUNC3(sc);
		goto fail;
	}

	if (FUNC7(sc, (struct an_ltv_gen *)&ssid)) {
		FUNC3(sc);
		goto fail;
	}

	/* See if the ssid matches what we expect ... but doesn't have to */
	if (FUNC15(ssid.an_entry[0].an_ssid, AN_DEF_SSID)) {
		FUNC3(sc);
		goto fail;
	}

	FUNC3(sc);
	return(AN_IOSIZ);
fail:
	FUNC12(&sc->an_mtx);
	return(0);
}