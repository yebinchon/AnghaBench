#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  f_TxConf; int /*<<< orphan*/  dataMemAttributes; int /*<<< orphan*/  dataMemId; int /*<<< orphan*/  liodnOffset; int /*<<< orphan*/  h_FmMuram; } ;
struct TYPE_6__ {TYPE_3__ imRxTxParams; } ;
struct TYPE_7__ {int portId; TYPE_1__ specificParams; struct dtsec_softc* h_App; int /*<<< orphan*/  f_Exception; int /*<<< orphan*/  liodnBase; int /*<<< orphan*/  independentModeEnable; int /*<<< orphan*/  portType; int /*<<< orphan*/  h_Fm; scalar_t__ baseAddr; } ;
typedef  TYPE_2__ t_FmPortParams ;
typedef  TYPE_3__ t_FmPortImRxTxParams ;
typedef  scalar_t__ t_Error ;
struct dtsec_softc {scalar_t__ sc_port_tx_hw_id; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/ * sc_txph; int /*<<< orphan*/  sc_muramh; int /*<<< orphan*/  sc_eth_dev_type; int /*<<< orphan*/  sc_fmh; scalar_t__ sc_fm_base; } ;
typedef  int /*<<< orphan*/  params ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ E_OK ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FM_PORT_LIODN_BASE ; 
 int /*<<< orphan*/  FM_PORT_LIODN_OFFSET ; 
 int /*<<< orphan*/  FM_PORT_MEM_ATTR ; 
 int /*<<< orphan*/  FM_PORT_MEM_ID ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  dtsec_fm_port_tx_exception_callback ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dtsec_im_fm_port_tx_conf_callback ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

int
FUNC6(struct dtsec_softc *sc, int unit)
{
	t_FmPortParams params;
	t_FmPortImRxTxParams *im_params;
	t_Error error;

	FUNC5(&params, 0, sizeof(params));

	params.baseAddr = sc->sc_fm_base + sc->sc_port_tx_hw_id;
	params.h_Fm = sc->sc_fmh;
	params.portType = FUNC4(sc->sc_eth_dev_type);
	params.portId = unit;
	params.independentModeEnable = TRUE;
	params.liodnBase = FM_PORT_LIODN_BASE;
	params.f_Exception = dtsec_fm_port_tx_exception_callback;
	params.h_App = sc;

	im_params = &params.specificParams.imRxTxParams;
	im_params->h_FmMuram = sc->sc_muramh;
	im_params->liodnOffset = FM_PORT_LIODN_OFFSET;
	im_params->dataMemId = FM_PORT_MEM_ID;
	im_params->dataMemAttributes = FM_PORT_MEM_ATTR;
	im_params->f_TxConf = dtsec_im_fm_port_tx_conf_callback;

	sc->sc_txph = FUNC0(&params);
	if (sc->sc_txph == NULL) {
		FUNC3(sc->sc_dev, "couldn't configure FM Port TX.\n");
		return (ENXIO);
	}

	error = FUNC2(sc->sc_txph);
	if (error != E_OK) {
		FUNC3(sc->sc_dev, "couldn't initialize FM Port TX.\n");
		FUNC1(sc->sc_txph);
		return (ENXIO);
	}

	if (bootverbose)
		FUNC3(sc->sc_dev, "TX hw port 0x%02x initialized.\n",
		    sc->sc_port_tx_hw_id);

	return (0);
}