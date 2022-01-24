#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_2__* extBufPool; int /*<<< orphan*/  numOfPoolsUsed; } ;
struct TYPE_10__ {TYPE_5__ extBufPools; scalar_t__ liodnOffset; int /*<<< orphan*/  dfltFqid; int /*<<< orphan*/  errFqid; } ;
typedef  TYPE_3__ t_FmPortRxParams ;
struct TYPE_8__ {TYPE_3__ rxParams; } ;
struct TYPE_11__ {int independentModeEnable; TYPE_1__ specificParams; struct dtsec_softc* h_App; int /*<<< orphan*/  f_Exception; int /*<<< orphan*/  liodnBase; int /*<<< orphan*/  portId; int /*<<< orphan*/  portType; int /*<<< orphan*/  h_Fm; scalar_t__ baseAddr; } ;
typedef  TYPE_4__ t_FmPortParams ;
typedef  TYPE_5__ t_FmExtPools ;
typedef  scalar_t__ t_Error ;
struct dtsec_softc {scalar_t__ sc_port_rx_hw_id; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/ * sc_rxph; int /*<<< orphan*/  sc_rx_bpid; int /*<<< orphan*/  sc_rx_fqid; int /*<<< orphan*/  sc_eth_id; int /*<<< orphan*/  sc_eth_dev_type; int /*<<< orphan*/  sc_fmh; scalar_t__ sc_fm_base; } ;
typedef  int /*<<< orphan*/  params ;
struct TYPE_9__ {int /*<<< orphan*/  size; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DTSEC_BPOOLS_USED ; 
 int ENXIO ; 
 scalar_t__ E_OK ; 
 int /*<<< orphan*/  FM_PORT_BUFFER_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FM_PORT_LIODN_BASE ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  dtsec_fm_port_rx_exception_callback ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 

int
FUNC6(struct dtsec_softc *sc, int unit)
{
	t_FmPortParams params;
	t_FmPortRxParams *rx_params;
	t_FmExtPools *pool_params;
	t_Error error;

	FUNC5(&params, 0, sizeof(params));

	params.baseAddr = sc->sc_fm_base + sc->sc_port_rx_hw_id;
	params.h_Fm = sc->sc_fmh;
	params.portType = FUNC4(sc->sc_eth_dev_type);
	params.portId = sc->sc_eth_id;
	params.independentModeEnable = false;
	params.liodnBase = FM_PORT_LIODN_BASE;
	params.f_Exception = dtsec_fm_port_rx_exception_callback;
	params.h_App = sc;

	rx_params = &params.specificParams.rxParams;
	rx_params->errFqid = sc->sc_rx_fqid;
	rx_params->dfltFqid = sc->sc_rx_fqid;
	rx_params->liodnOffset = 0;

	pool_params = &rx_params->extBufPools;
	pool_params->numOfPoolsUsed = DTSEC_BPOOLS_USED;
	pool_params->extBufPool->id = sc->sc_rx_bpid;
	pool_params->extBufPool->size = FM_PORT_BUFFER_SIZE;

	sc->sc_rxph = FUNC0(&params);
	if (sc->sc_rxph == NULL) {
		FUNC3(sc->sc_dev, "couldn't configure FM Port RX.\n");
		return (ENXIO);
	}

	error = FUNC2(sc->sc_rxph);
	if (error != E_OK) {
		FUNC3(sc->sc_dev, "couldn't initialize FM Port RX.\n");
		FUNC1(sc->sc_rxph);
		return (ENXIO);
	}

	if (bootverbose)
		FUNC3(sc->sc_dev, "RX hw port 0x%02x initialized.\n",
		    sc->sc_port_rx_hw_id);

	return (0);
}