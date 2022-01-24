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
typedef  int uint32_t ;
struct mii_data {int mii_media_active; } ;
struct cgem_softc {int mii_media_active; int /*<<< orphan*/  ref_clk_num; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cgem_softc*) ; 
 int /*<<< orphan*/  CGEM_NET_CFG ; 
 int CGEM_NET_CFG_FULL_DUPLEX ; 
 int CGEM_NET_CFG_GIGE_EN ; 
 int CGEM_NET_CFG_SPEED100 ; 
#define  IFM_1000_T 129 
#define  IFM_100_TX 128 
 int IFM_FDX ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct cgem_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cgem_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct cgem_softc *sc,	struct mii_data *mii)
{
	uint32_t net_cfg;
	int ref_clk_freq;

	FUNC0(sc);

	/* Update hardware to reflect media. */
	net_cfg = FUNC2(sc, CGEM_NET_CFG);
	net_cfg &= ~(CGEM_NET_CFG_SPEED100 | CGEM_NET_CFG_GIGE_EN |
		     CGEM_NET_CFG_FULL_DUPLEX);

	switch (FUNC1(mii->mii_media_active)) {
	case IFM_1000_T:
		net_cfg |= (CGEM_NET_CFG_SPEED100 |
			    CGEM_NET_CFG_GIGE_EN);
		ref_clk_freq = 125000000;
		break;
	case IFM_100_TX:
		net_cfg |= CGEM_NET_CFG_SPEED100;
		ref_clk_freq = 25000000;
		break;
	default:
		ref_clk_freq = 2500000;
	}

	if ((mii->mii_media_active & IFM_FDX) != 0)
		net_cfg |= CGEM_NET_CFG_FULL_DUPLEX;

	FUNC3(sc, CGEM_NET_CFG, net_cfg);

	/* Set the reference clock if necessary. */
	if (FUNC4(sc->ref_clk_num, ref_clk_freq))
		FUNC5(sc->dev, "cgem_mediachange: "
			      "could not set ref clk%d to %d.\n",
			      sc->ref_clk_num, ref_clk_freq);

	sc->mii_media_active = mii->mii_media_active;
}