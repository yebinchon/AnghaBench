#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ num_msix_vectors_vf; } ;
struct i40e_hw {TYPE_1__ func_caps; } ;
struct ixl_pf {struct i40e_hw hw; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IAVF_MAX_QUEUES ; 
 int /*<<< orphan*/  IOV_SCHEMA_HASDEFAULT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 

void
FUNC8(struct ixl_pf *pf)
{
	device_t dev = pf->dev;
	struct i40e_hw *hw = &pf->hw;
	nvlist_t	*pf_schema, *vf_schema;
	int		iov_error;

	pf_schema = FUNC7();
	vf_schema = FUNC7();
	FUNC6(vf_schema, "mac-addr", 0, NULL);
	FUNC4(vf_schema, "mac-anti-spoof",
	    IOV_SCHEMA_HASDEFAULT, TRUE);
	FUNC4(vf_schema, "allow-set-mac",
	    IOV_SCHEMA_HASDEFAULT, FALSE);
	FUNC4(vf_schema, "allow-promisc",
	    IOV_SCHEMA_HASDEFAULT, FALSE);
	FUNC5(vf_schema, "num-queues",
	    IOV_SCHEMA_HASDEFAULT,
	    FUNC1(1, FUNC2(hw->func_caps.num_msix_vectors_vf - 1, IAVF_MAX_QUEUES)));

	iov_error = FUNC3(dev, pf_schema, vf_schema);
	if (iov_error != 0) {
		FUNC0(dev,
		    "Failed to initialize SR-IOV (error=%d)\n",
		    iov_error);
	} else
		FUNC0(dev, "SR-IOV ready\n");
}