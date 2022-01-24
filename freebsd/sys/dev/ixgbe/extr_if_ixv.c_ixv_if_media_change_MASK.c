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
struct ifmedia {int /*<<< orphan*/  ifm_media; } ;
struct adapter {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int EINVAL ; 
#define  IFM_AUTO 128 
 scalar_t__ IFM_ETHER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct ifmedia* FUNC4 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(if_ctx_t ctx)
{
	struct adapter *adapter = FUNC5(ctx);
	struct ifmedia *ifm = FUNC4(ctx);

	FUNC2("ixv_media_change: begin");

	if (FUNC1(ifm->ifm_media) != IFM_ETHER)
		return (EINVAL);

	switch (FUNC0(ifm->ifm_media)) {
	case IFM_AUTO:
		break;
	default:
		FUNC3(adapter->dev, "Only auto media type\n");
		return (EINVAL);
	}

	return (0);
}