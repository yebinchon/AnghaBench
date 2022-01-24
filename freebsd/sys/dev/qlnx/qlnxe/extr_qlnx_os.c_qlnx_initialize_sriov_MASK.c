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
struct TYPE_3__ {int sriov_initialized; int /*<<< orphan*/  pci_dev; } ;
typedef  TYPE_1__ qlnx_host_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IOV_SCHEMA_HASDEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 

__attribute__((used)) static void
FUNC6(qlnx_host_t *ha)
{
	device_t	dev;
	nvlist_t	*pf_schema, *vf_schema;
	int		iov_error;

	dev = ha->pci_dev;

	pf_schema = FUNC5();
	vf_schema = FUNC5();

	FUNC4(vf_schema, "mac-addr", 0, NULL);
	FUNC2(vf_schema, "allow-set-mac",
		IOV_SCHEMA_HASDEFAULT, FALSE);
	FUNC2(vf_schema, "allow-promisc",
		IOV_SCHEMA_HASDEFAULT, FALSE);
	FUNC3(vf_schema, "num-queues",
		IOV_SCHEMA_HASDEFAULT, 1);

	iov_error = FUNC1(dev, pf_schema, vf_schema);

	if (iov_error != 0) {
		ha->sriov_initialized = 0;
	} else {
		FUNC0(dev, "SRIOV initialized\n");
		ha->sriov_initialized = 1;
	}
			
	return;
}