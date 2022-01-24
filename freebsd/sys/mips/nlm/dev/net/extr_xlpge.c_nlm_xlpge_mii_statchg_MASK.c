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
struct nlm_xlpge_softc {int block; int port; int /*<<< orphan*/  duplexity; int /*<<< orphan*/  speed; int /*<<< orphan*/  base_addr; int /*<<< orphan*/ * mii_bus; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 scalar_t__ IFM_100_TX ; 
 scalar_t__ IFM_10_T ; 
 int IFM_ACTIVE ; 
 int IFM_FDX ; 
 int IFM_GMASK ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  NLM_SGMII_DUPLEX_FULL ; 
 int /*<<< orphan*/  NLM_SGMII_DUPLEX_HALF ; 
 int /*<<< orphan*/  NLM_SGMII_SPEED_10 ; 
 int /*<<< orphan*/  NLM_SGMII_SPEED_100 ; 
 int /*<<< orphan*/  NLM_SGMII_SPEED_1000 ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,char*,char*) ; 

__attribute__((used)) static void
FUNC4(device_t dev)
{
	struct nlm_xlpge_softc *sc;
	struct mii_data *mii;
	char *speed, *duplexity;

	sc = FUNC1(dev);
	if (sc->mii_bus == NULL)
		return;

	mii = FUNC1(sc->mii_bus);
	if (mii->mii_media_status & IFM_ACTIVE) {
		if (FUNC0(mii->mii_media_active) ==  IFM_10_T) {
			sc->speed = NLM_SGMII_SPEED_10;
			speed =  "10Mbps";
		} else if (FUNC0(mii->mii_media_active) == IFM_100_TX) {
			sc->speed = NLM_SGMII_SPEED_100;
			speed = "100Mbps";
		} else { /* default to 1G */
			sc->speed = NLM_SGMII_SPEED_1000;
			speed =  "1Gbps";
		}

		if ((mii->mii_media_active & IFM_GMASK) == IFM_FDX) {
			sc->duplexity = NLM_SGMII_DUPLEX_FULL;
			duplexity =  "full";
		} else {
			sc->duplexity = NLM_SGMII_DUPLEX_HALF;
			duplexity = "half";
		}

		FUNC3("Port [%d, %d] setup with speed=%s duplex=%s\n",
		    sc->block, sc->port, speed, duplexity);

		FUNC2(sc->base_addr, sc->block, sc->port, 0, 1, 1,
		    sc->speed, sc->duplexity);
	}
}