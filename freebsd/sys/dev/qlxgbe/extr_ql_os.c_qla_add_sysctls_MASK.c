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
struct TYPE_3__ {int dbg_level; int enable_minidump; int enable_driverstate_dump; int enable_error_recovery; int ms_delay_after_init; int std_replenish; int /*<<< orphan*/  hw_lock_failed; int /*<<< orphan*/  hw_vlan_tx_frames; int /*<<< orphan*/  tx_tso_frames; int /*<<< orphan*/  ipv6_lro; int /*<<< orphan*/  ipv4_lro; int /*<<< orphan*/  fw_ver_str; int /*<<< orphan*/  pci_dev; } ;
typedef  TYPE_1__ qla_host_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int QL_STD_REPLENISH_THRES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qla_sysctl_get_link_status ; 
 int /*<<< orphan*/  ver_str ; 

__attribute__((used)) static void
FUNC7(qla_host_t *ha)
{
        device_t dev = ha->pci_dev;

	FUNC2(FUNC5(dev),
		FUNC4(FUNC6(dev)),
		OID_AUTO, "version", CTLFLAG_RD,
		ver_str, 0, "Driver Version");

        FUNC2(FUNC5(dev),
                FUNC4(FUNC6(dev)),
                OID_AUTO, "fw_version", CTLFLAG_RD,
                ha->fw_ver_str, 0, "firmware version");

        FUNC0(FUNC5(dev),
                FUNC4(FUNC6(dev)),
                OID_AUTO, "link_status", CTLTYPE_INT | CTLFLAG_RW,
                (void *)ha, 0,
                qla_sysctl_get_link_status, "I", "Link Status");

	ha->dbg_level = 0;
        FUNC3(FUNC5(dev),
                FUNC4(FUNC6(dev)),
                OID_AUTO, "debug", CTLFLAG_RW,
                &ha->dbg_level, ha->dbg_level, "Debug Level");

	ha->enable_minidump = 1;
	FUNC3(FUNC5(dev),
		FUNC4(FUNC6(dev)),
		OID_AUTO, "enable_minidump", CTLFLAG_RW,
		&ha->enable_minidump, ha->enable_minidump,
		"Minidump retrival prior to error recovery "
		"is enabled only when this is set");

	ha->enable_driverstate_dump = 1;
	FUNC3(FUNC5(dev),
		FUNC4(FUNC6(dev)),
		OID_AUTO, "enable_driverstate_dump", CTLFLAG_RW,
		&ha->enable_driverstate_dump, ha->enable_driverstate_dump,
		"Driver State retrival prior to error recovery "
		"is enabled only when this is set");

	ha->enable_error_recovery = 1;
	FUNC3(FUNC5(dev),
		FUNC4(FUNC6(dev)),
		OID_AUTO, "enable_error_recovery", CTLFLAG_RW,
		&ha->enable_error_recovery, ha->enable_error_recovery,
		"when set error recovery is enabled on fatal errors "
		"otherwise the port is turned offline");

	ha->ms_delay_after_init = 1000;
	FUNC3(FUNC5(dev),
		FUNC4(FUNC6(dev)),
		OID_AUTO, "ms_delay_after_init", CTLFLAG_RW,
		&ha->ms_delay_after_init, ha->ms_delay_after_init,
		"millisecond delay after hw_init");

	ha->std_replenish = QL_STD_REPLENISH_THRES;
        FUNC3(FUNC5(dev),
                FUNC4(FUNC6(dev)),
                OID_AUTO, "std_replenish", CTLFLAG_RW,
                &ha->std_replenish, ha->std_replenish,
                "Threshold for Replenishing Standard Frames");

        FUNC1(FUNC5(dev),
                FUNC4(FUNC6(dev)),
                OID_AUTO, "ipv4_lro",
                CTLFLAG_RD, &ha->ipv4_lro,
                "number of ipv4 lro completions");

        FUNC1(FUNC5(dev),
                FUNC4(FUNC6(dev)),
                OID_AUTO, "ipv6_lro",
                CTLFLAG_RD, &ha->ipv6_lro,
                "number of ipv6 lro completions");

	FUNC1(FUNC5(dev),
		FUNC4(FUNC6(dev)),
		OID_AUTO, "tx_tso_frames",
		CTLFLAG_RD, &ha->tx_tso_frames,
		"number of Tx TSO Frames");

	FUNC1(FUNC5(dev),
                FUNC4(FUNC6(dev)),
		OID_AUTO, "hw_vlan_tx_frames",
		CTLFLAG_RD, &ha->hw_vlan_tx_frames,
		"number of Tx VLAN Frames");

	FUNC1(FUNC5(dev),
                FUNC4(FUNC6(dev)),
		OID_AUTO, "hw_lock_failed",
		CTLFLAG_RD, &ha->hw_lock_failed,
		"number of hw_lock failures");

        return;
}