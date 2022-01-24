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
struct TYPE_3__ {int /*<<< orphan*/  pci_dev; } ;
typedef  TYPE_1__ qla_host_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,scalar_t__*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ qls_dbg_level ; 
 int /*<<< orphan*/  qls_sysctl_get_drvr_stats ; 
 int /*<<< orphan*/  ver_str ; 

__attribute__((used)) static void
FUNC6(qla_host_t *ha)
{
        device_t dev = ha->pci_dev;

	FUNC1(FUNC4(dev),
		FUNC3(FUNC5(dev)),
		OID_AUTO, "version", CTLFLAG_RD,
		ver_str, 0, "Driver Version");

	qls_dbg_level = 0;
        FUNC2(FUNC4(dev),
                FUNC3(FUNC5(dev)),
                OID_AUTO, "debug", CTLFLAG_RW,
                &qls_dbg_level, qls_dbg_level, "Debug Level");

        FUNC0(FUNC4(dev),
                FUNC3(FUNC5(dev)),
                OID_AUTO, "drvr_stats", CTLTYPE_INT | CTLFLAG_RW,
                (void *)ha, 0,
                qls_sysctl_get_drvr_stats, "I", "Driver Maintained Statistics");

        return;
}