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
struct TYPE_3__ {int /*<<< orphan*/  fw_ver_str; int /*<<< orphan*/  pci_dev; } ;
typedef  TYPE_1__ qla_host_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ dbg_level ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ free_pkt_thres ; 
 scalar_t__ jumbo_replenish ; 
 int /*<<< orphan*/  qla_sysctl_get_stats ; 
 scalar_t__ rcv_pkt_thres ; 
 scalar_t__ rcv_pkt_thres_d ; 
 scalar_t__ snd_pkt_thres ; 
 scalar_t__ std_replenish ; 

__attribute__((used)) static void
FUNC6(qla_host_t *ha)
{
        device_t dev = ha->pci_dev;

        FUNC0(FUNC4(dev),
                FUNC3(FUNC5(dev)),
                OID_AUTO, "stats", CTLTYPE_INT | CTLFLAG_RD,
                (void *)ha, 0,
                qla_sysctl_get_stats, "I", "Statistics");

	FUNC1(FUNC4(dev),
		FUNC3(FUNC5(dev)),
		OID_AUTO, "fw_version", CTLFLAG_RD,
		ha->fw_ver_str, 0, "firmware version");

	dbg_level = 0;
        FUNC2(FUNC4(dev),
                FUNC3(FUNC5(dev)),
                OID_AUTO, "debug", CTLFLAG_RW,
                &dbg_level, dbg_level, "Debug Level");

        FUNC2(FUNC4(dev),
                FUNC3(FUNC5(dev)),
                OID_AUTO, "std_replenish", CTLFLAG_RW,
                &std_replenish, std_replenish,
                "Threshold for Replenishing Standard Frames");

        FUNC2(FUNC4(dev),
                FUNC3(FUNC5(dev)),
                OID_AUTO, "jumbo_replenish", CTLFLAG_RW,
                &jumbo_replenish, jumbo_replenish,
                "Threshold for Replenishing Jumbo Frames");

        FUNC2(FUNC4(dev),
                FUNC3(FUNC5(dev)),
                OID_AUTO, "rcv_pkt_thres",  CTLFLAG_RW,
                &rcv_pkt_thres, rcv_pkt_thres,
                "Threshold for # of rcv pkts to trigger indication isr");

        FUNC2(FUNC4(dev),
                FUNC3(FUNC5(dev)),
                OID_AUTO, "rcv_pkt_thres_d",  CTLFLAG_RW,
                &rcv_pkt_thres_d, rcv_pkt_thres_d,
                "Threshold for # of rcv pkts to trigger indication defered");

        FUNC2(FUNC4(dev),
                FUNC3(FUNC5(dev)),
                OID_AUTO, "snd_pkt_thres",  CTLFLAG_RW,
                &snd_pkt_thres, snd_pkt_thres,
                "Threshold for # of snd packets");

        FUNC2(FUNC4(dev),
                FUNC3(FUNC5(dev)),
                OID_AUTO, "free_pkt_thres",  CTLFLAG_RW,
                &free_pkt_thres, free_pkt_thres,
                "Threshold for # of packets to free at a time");

        return;
}