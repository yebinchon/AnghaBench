#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_15__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  prop_buf ;
struct TYPE_24__ {int /*<<< orphan*/  io_pending_recursing; int /*<<< orphan*/  io_alloc_failed_count; int /*<<< orphan*/  io_total_pending; int /*<<< orphan*/  io_total_free; int /*<<< orphan*/  io_pending_count; int /*<<< orphan*/  io_active_count; int /*<<< orphan*/  io_pending_list; int /*<<< orphan*/  io_pending_lock; int /*<<< orphan*/  vport_list; TYPE_3__* ocs; } ;
typedef  TYPE_2__ ocs_xport_t ;
struct TYPE_23__ {scalar_t__ asic_type; } ;
struct TYPE_22__ {int /*<<< orphan*/  watchdog_lock; TYPE_1__ sli; } ;
struct TYPE_25__ {scalar_t__ desc; int auto_xfer_rdy_size; scalar_t__ topology; scalar_t__ speed; scalar_t__ ethernet_license; scalar_t__ target_io_timer_sec; char const* fw_version; scalar_t__ num_vports; TYPE_15__ hw; int /*<<< orphan*/  enable_tgt; scalar_t__ enable_ini; scalar_t__ config_tgt; int /*<<< orphan*/  instance_index; scalar_t__ explicit_buffer_list; scalar_t__ esoc; scalar_t__ enable_hlm; } ;
typedef  TYPE_3__ ocs_t ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  OCS_ESOC ; 
 scalar_t__ OCS_FC_DIF_SEED ; 
 scalar_t__ OCS_FC_RQ_SIZE_DEFAULT ; 
 int /*<<< orphan*/  OCS_HW_CB_DOMAIN ; 
 int /*<<< orphan*/  OCS_HW_CB_PORT ; 
 int /*<<< orphan*/  OCS_HW_CB_REMOTE_NODE ; 
 int /*<<< orphan*/  OCS_HW_CB_UNSOLICITED ; 
 int /*<<< orphan*/  OCS_HW_DIF_CAPABLE ; 
 int /*<<< orphan*/  OCS_HW_DIF_MODE ; 
 scalar_t__ OCS_HW_DIF_MODE_INLINE ; 
 scalar_t__ OCS_HW_DIF_MODE_SEPARATE ; 
 int /*<<< orphan*/  OCS_HW_DIF_SEED ; 
 int /*<<< orphan*/  OCS_HW_EMULATE_TARGET_WQE_TIMEOUT ; 
 int /*<<< orphan*/  OCS_HW_ETH_LICENSE ; 
 int /*<<< orphan*/  OCS_HW_FW_REV ; 
 int /*<<< orphan*/  OCS_HW_HIGH_LOGIN_MODE ; 
 int /*<<< orphan*/  OCS_HW_LINK_SPEED ; 
 int /*<<< orphan*/  OCS_HW_MAX_IO ; 
 int /*<<< orphan*/  OCS_HW_MAX_SGL ; 
 int /*<<< orphan*/  OCS_HW_MAX_VPORTS ; 
 int /*<<< orphan*/  OCS_HW_N_IO ; 
 int /*<<< orphan*/  OCS_HW_PREREGISTER_SGL ; 
 int /*<<< orphan*/  OCS_HW_RQ_DEFAULT_BUFFER_SIZE ; 
 int /*<<< orphan*/  OCS_HW_RQ_PROCESS_LIMIT ; 
 scalar_t__ OCS_HW_RTN_SUCCESS ; 
 int /*<<< orphan*/  OCS_HW_TOPOLOGY ; 
 scalar_t__ SLI4_ASIC_TYPE_LANCER ; 
 scalar_t__ SLI4_SGE_MAX_RESERVED ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  UINT32_MAX ; 
 int /*<<< orphan*/  io_pending_link ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocs_domain_cb ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_15__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_15__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC4 (TYPE_15__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_15__*) ; 
 scalar_t__ FUNC6 (TYPE_15__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_15__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  ocs_io_t ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  ocs_port_cb ; 
 int /*<<< orphan*/  ocs_remote_node_cb ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int FUNC16 (TYPE_3__*) ; 
 scalar_t__ FUNC17 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocs_unsolicited_cb ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ocs_vport_spec_t ; 
 scalar_t__ FUNC19 (TYPE_2__*) ; 

int32_t
FUNC20(ocs_xport_t *xport)
{
	ocs_t *ocs = xport->ocs;
	int32_t rc;
	uint32_t i;
	uint32_t max_hw_io;
	uint32_t max_sgl;
	uint32_t hlm;
	uint32_t rq_limit;
	uint32_t dif_capable;
	uint8_t dif_separate = 0;
	char prop_buf[32];

	/* booleans used for cleanup if initialization fails */
	uint8_t ini_device_set = FALSE;
	uint8_t tgt_device_set = FALSE;
	uint8_t hw_initialized = FALSE;

	FUNC3(&ocs->hw, OCS_HW_MAX_IO, &max_hw_io);
	if (FUNC6(&ocs->hw, OCS_HW_N_IO, max_hw_io) != OCS_HW_RTN_SUCCESS) {
		FUNC12(ocs, "%s: Can't set number of IOs\n", ocs->desc);
		return -1;
	}

	FUNC3(&ocs->hw, OCS_HW_MAX_SGL, &max_sgl);
	max_sgl -= SLI4_SGE_MAX_RESERVED;

	if (ocs->enable_hlm) {
		FUNC3(&ocs->hw, OCS_HW_HIGH_LOGIN_MODE, &hlm);
		if (!hlm) {
			ocs->enable_hlm = FALSE;
			FUNC12(ocs, "Cannot enable high login mode for this port\n");
		} else {
                        FUNC11(ocs, "High login mode is enabled\n");
			if (FUNC6(&ocs->hw, OCS_HW_HIGH_LOGIN_MODE, TRUE)) {
				FUNC12(ocs, "%s: Can't set high login mode\n", ocs->desc);
				return -1;
			}
		}
	}

	/* validate the auto xfer_rdy size */
	if (ocs->auto_xfer_rdy_size > 0 &&
	    (ocs->auto_xfer_rdy_size < 2048 ||
	     ocs->auto_xfer_rdy_size > 65536)) {
		FUNC12(ocs, "Auto XFER_RDY size is out of range (2K-64K)\n");
		return -1;
	}

	FUNC3(&ocs->hw, OCS_HW_MAX_IO, &max_hw_io);

	if (ocs->auto_xfer_rdy_size > 0) {
		if (FUNC19(xport)) {
			FUNC12(ocs, "%s: Failed auto xfer ready setup\n", ocs->desc);
			return -1;
		}
		if (ocs->esoc){
			FUNC6(&ocs->hw, OCS_ESOC, TRUE);
		}
	}

	if (ocs->explicit_buffer_list) {
		/* Are pre-registered SGL's required? */
		FUNC3(&ocs->hw, OCS_HW_PREREGISTER_SGL, &i);
		if (i == TRUE) {
			FUNC12(ocs, "Explicit Buffer List not supported on this device, not enabled\n");
		} else {
			FUNC6(&ocs->hw, OCS_HW_PREREGISTER_SGL, FALSE);
		}
	}

	if (FUNC6(&ocs->hw, OCS_HW_TOPOLOGY, ocs->topology) != OCS_HW_RTN_SUCCESS) {
		FUNC12(ocs, "%s: Can't set the toplogy\n", ocs->desc);
		return -1;
	}
	FUNC6(&ocs->hw, OCS_HW_RQ_DEFAULT_BUFFER_SIZE, OCS_FC_RQ_SIZE_DEFAULT);

	if (FUNC6(&ocs->hw, OCS_HW_LINK_SPEED, ocs->speed) != OCS_HW_RTN_SUCCESS) {
		FUNC12(ocs, "%s: Can't set the link speed\n", ocs->desc);
		return -1;
	}

	if (FUNC6(&ocs->hw, OCS_HW_ETH_LICENSE, ocs->ethernet_license) != OCS_HW_RTN_SUCCESS) {
		FUNC12(ocs, "%s: Can't set the ethernet license\n", ocs->desc);
		return -1;
	}

	/* currently only lancer support setting the CRC seed value */
	if (ocs->hw.sli.asic_type == SLI4_ASIC_TYPE_LANCER) {
		if (FUNC6(&ocs->hw, OCS_HW_DIF_SEED, OCS_FC_DIF_SEED) != OCS_HW_RTN_SUCCESS) {
			FUNC12(ocs, "%s: Can't set the DIF seed\n", ocs->desc);
			return -1;
		}
	}

	/* Set the Dif mode */
	if (0 == FUNC3(&ocs->hw, OCS_HW_DIF_CAPABLE, &dif_capable)) {
		if (dif_capable) {
			if (FUNC1("dif_separate", prop_buf, sizeof(prop_buf)) == 0) {
				dif_separate = FUNC17(prop_buf, 0, 0);
			}

			if ((rc = FUNC6(&ocs->hw, OCS_HW_DIF_MODE,
			      (dif_separate == 0 ? OCS_HW_DIF_MODE_INLINE : OCS_HW_DIF_MODE_SEPARATE)))) {
				FUNC12(ocs, "Requested DIF MODE not supported\n");
			}
		}
	}

	if (ocs->target_io_timer_sec) {
		FUNC11(ocs, "setting target io timer=%d\n", ocs->target_io_timer_sec);
		FUNC6(&ocs->hw, OCS_HW_EMULATE_TARGET_WQE_TIMEOUT, TRUE);
	}

	FUNC2(&ocs->hw, OCS_HW_CB_DOMAIN, ocs_domain_cb, ocs);
	FUNC2(&ocs->hw, OCS_HW_CB_REMOTE_NODE, ocs_remote_node_cb, ocs);
	FUNC2(&ocs->hw, OCS_HW_CB_UNSOLICITED, ocs_unsolicited_cb, ocs);
	FUNC2(&ocs->hw, OCS_HW_CB_PORT, ocs_port_cb, ocs);

	ocs->fw_version = (const char*) FUNC4(&ocs->hw, OCS_HW_FW_REV);

	/* Initialize vport list */
	FUNC9(&xport->vport_list, ocs_vport_spec_t, link);
	FUNC10(ocs, &xport->io_pending_lock, "io_pending_lock[%d]", ocs->instance_index);
	FUNC9(&xport->io_pending_list, ocs_io_t, io_pending_link);
	FUNC0(&xport->io_active_count, 0);
	FUNC0(&xport->io_pending_count, 0);
	FUNC0(&xport->io_total_free, 0);
	FUNC0(&xport->io_total_pending, 0);
	FUNC0(&xport->io_alloc_failed_count, 0);
	FUNC0(&xport->io_pending_recursing, 0);
	FUNC10(ocs, &ocs->hw.watchdog_lock, " Watchdog Lock[%d]", FUNC8(ocs));
	rc = FUNC5(&ocs->hw);
	if (rc) {
		FUNC12(ocs, "ocs_hw_init failure\n");
		goto ocs_xport_init_cleanup;
	} else {
		hw_initialized = TRUE;
	}

	rq_limit = max_hw_io/2;
	if (FUNC6(&ocs->hw, OCS_HW_RQ_PROCESS_LIMIT, rq_limit) != OCS_HW_RTN_SUCCESS) {
		FUNC12(ocs, "%s: Can't set the RQ process limit\n", ocs->desc);
	}

	if (ocs->config_tgt) {
		rc = FUNC16(ocs);
		if (rc) {
			FUNC12(ocs, "failed to initialize target\n");
			goto ocs_xport_init_cleanup;
		} else {
			tgt_device_set = TRUE;
		}
	}

	if (ocs->enable_ini) {
		rc = FUNC14(ocs);
		if (rc) {
			FUNC12(ocs, "failed to initialize initiator\n");
			goto ocs_xport_init_cleanup;
		} else {
			ini_device_set = TRUE;
		}

	}

	/* Add vports */
	if (ocs->num_vports != 0) {

		uint32_t max_vports;
		FUNC3(&ocs->hw, OCS_HW_MAX_VPORTS, &max_vports);

		if (ocs->num_vports < max_vports) {
			FUNC11(ocs, "Provisioning %d vports\n", ocs->num_vports);
			for (i = 0; i < ocs->num_vports; i++) {
				FUNC18(ocs, 0, 0, UINT32_MAX, ocs->enable_ini, ocs->enable_tgt, NULL, NULL);
			}
		} else {
			FUNC12(ocs, "failed to create vports. num_vports range should be (1-%d) \n", max_vports-1);
			goto ocs_xport_init_cleanup;
		}
	}

	return 0;

ocs_xport_init_cleanup:
	if (ini_device_set) {
		FUNC13(ocs);
	}

	if (tgt_device_set) {
		FUNC15(ocs);
	}

	if (hw_initialized) {
		/* ocs_hw_teardown can only execute after ocs_hw_init */
		FUNC7(&ocs->hw);
	}

	return -1;
}