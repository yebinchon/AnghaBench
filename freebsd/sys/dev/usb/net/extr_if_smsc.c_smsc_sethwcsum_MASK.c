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
typedef  int /*<<< orphan*/  uint32_t ;
struct smsc_softc {int /*<<< orphan*/  sc_ue; } ;
struct ifnet {int if_capabilities; int if_capenable; } ;

/* Variables and functions */
 int EIO ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_TXCSUM ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  SMSC_COE_CTRL ; 
 int /*<<< orphan*/  SMSC_COE_CTRL_RX_EN ; 
 int /*<<< orphan*/  SMSC_COE_CTRL_TX_EN ; 
 int /*<<< orphan*/  FUNC0 (struct smsc_softc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct smsc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct smsc_softc*,char*,int) ; 
 int FUNC3 (struct smsc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct smsc_softc *sc)
{
	struct ifnet *ifp = FUNC4(&sc->sc_ue);
	uint32_t val;
	int err;

	if (!ifp)
		return (-EIO);

	FUNC0(sc, MA_OWNED);

	err = FUNC1(sc, SMSC_COE_CTRL, &val);
	if (err != 0) {
		FUNC2(sc, "failed to read SMSC_COE_CTRL (err=%d)\n", err);
		return (err);
	}

	/* Enable/disable the Rx checksum */
	if ((ifp->if_capabilities & ifp->if_capenable) & IFCAP_RXCSUM)
		val |= SMSC_COE_CTRL_RX_EN;
	else
		val &= ~SMSC_COE_CTRL_RX_EN;

	/* Enable/disable the Tx checksum (currently not supported) */
	if ((ifp->if_capabilities & ifp->if_capenable) & IFCAP_TXCSUM)
		val |= SMSC_COE_CTRL_TX_EN;
	else
		val &= ~SMSC_COE_CTRL_TX_EN;

	err = FUNC3(sc, SMSC_COE_CTRL, val);
	if (err != 0) {
		FUNC2(sc, "failed to write SMSC_COE_CTRL (err=%d)\n", err);
		return (err);
	}

	return (0);
}