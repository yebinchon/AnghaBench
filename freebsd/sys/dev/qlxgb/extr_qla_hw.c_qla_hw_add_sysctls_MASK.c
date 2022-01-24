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
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysctl_num_rds_rings ; 
 int /*<<< orphan*/  sysctl_num_sds_rings ; 

void
FUNC4(qla_host_t *ha)
{
        device_t	dev;

        dev = ha->pci_dev;

        FUNC0(FUNC2(dev),
                FUNC1(FUNC3(dev)),
                OID_AUTO, "num_rds_rings", CTLFLAG_RD, &sysctl_num_rds_rings,
		sysctl_num_rds_rings, "Number of Rcv Descriptor Rings");

        FUNC0(FUNC2(dev),
                FUNC1(FUNC3(dev)),
                OID_AUTO, "num_sds_rings", CTLFLAG_RD, &sysctl_num_sds_rings,
		sysctl_num_sds_rings, "Number of Status Descriptor Rings");
}