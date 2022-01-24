#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  emt_logger; int /*<<< orphan*/  emt_exception; int /*<<< orphan*/  emt_ev_cpl; int /*<<< orphan*/  emt_execute; int /*<<< orphan*/ * emt_dma_mem; struct sfxge_softc* emt_context; } ;
struct sfxge_mcdi {scalar_t__ state; int /*<<< orphan*/  mem; TYPE_1__ transport; } ;
struct sfxge_softc {int /*<<< orphan*/  mcdi_logging; int /*<<< orphan*/  dev; struct sfxge_mcdi mcdi; int /*<<< orphan*/ * enp; } ;
typedef  int /*<<< orphan*/  efx_nic_t ;
typedef  TYPE_1__ efx_mcdi_transport_t ;
typedef  int /*<<< orphan*/  efsys_mem_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MCDI_CTL_SDU_LEN_MAX_V2 ; 
 int /*<<< orphan*/  OID_AUTO ; 
 scalar_t__ SFXGE_MCDI_INITIALIZED ; 
 int /*<<< orphan*/  FUNC1 (struct sfxge_mcdi*) ; 
 int /*<<< orphan*/  FUNC2 (struct sfxge_mcdi*,int /*<<< orphan*/ ) ; 
 scalar_t__ SFXGE_MCDI_UNINITIALIZED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC9 (struct sfxge_softc*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sfxge_mcdi_ev_cpl ; 
 int /*<<< orphan*/  sfxge_mcdi_exception ; 
 int /*<<< orphan*/  sfxge_mcdi_execute ; 
 int /*<<< orphan*/  sfxge_mcdi_logger ; 

int
FUNC10(struct sfxge_softc *sc)
{
	efx_nic_t *enp;
	struct sfxge_mcdi *mcdi;
	efx_mcdi_transport_t *emtp;
	efsys_mem_t *esmp;
	int max_msg_size;
	int rc;

	enp = sc->enp;
	mcdi = &sc->mcdi;
	emtp = &mcdi->transport;
	esmp = &mcdi->mem;
	max_msg_size = sizeof (uint32_t) + MCDI_CTL_SDU_LEN_MAX_V2;

	FUNC0(mcdi->state == SFXGE_MCDI_UNINITIALIZED,
	    ("MCDI already initialized"));

	FUNC2(mcdi, FUNC5(sc->dev));

	mcdi->state = SFXGE_MCDI_INITIALIZED;

	if ((rc = FUNC9(sc, max_msg_size, esmp)) != 0)
		goto fail;

	emtp->emt_context = sc;
	emtp->emt_dma_mem = esmp;
	emtp->emt_execute = sfxge_mcdi_execute;
	emtp->emt_ev_cpl = sfxge_mcdi_ev_cpl;
	emtp->emt_exception = sfxge_mcdi_exception;
#if EFSYS_OPT_MCDI_LOGGING
	emtp->emt_logger = sfxge_mcdi_logger;
	SYSCTL_ADD_INT(device_get_sysctl_ctx(sc->dev),
		       SYSCTL_CHILDREN(device_get_sysctl_tree(sc->dev)),
		       OID_AUTO, "mcdi_logging", CTLFLAG_RW,
		       &sc->mcdi_logging, 0,
		       "MCDI logging");
#endif

	if ((rc = FUNC8(enp, emtp)) != 0)
		goto fail;

	return (0);

fail:
	FUNC1(mcdi);
	mcdi->state = SFXGE_MCDI_UNINITIALIZED;
	return (rc);
}