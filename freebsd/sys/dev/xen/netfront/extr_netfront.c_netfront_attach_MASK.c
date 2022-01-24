#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  xn_enable_lro ; 
 int /*<<< orphan*/  xn_num_queues ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	int err;

	err = FUNC3(dev);
	if (err != 0) {
		FUNC6(dev, err, "creating netdev");
		return (err);
	}

	FUNC0(FUNC4(dev),
	    FUNC2(FUNC5(dev)),
	    OID_AUTO, "enable_lro", CTLFLAG_RW,
	    &xn_enable_lro, 0, "Large Receive Offload");

	FUNC1(FUNC4(dev),
	    FUNC2(FUNC5(dev)),
	    OID_AUTO, "num_queues", CTLFLAG_RD,
	    &xn_num_queues, "Number of pairs of queues");

	return (0);
}