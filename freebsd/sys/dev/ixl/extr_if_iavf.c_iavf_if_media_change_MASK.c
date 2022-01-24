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
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ IFM_ETHER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ifmedia* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(if_ctx_t ctx)
{
	struct ifmedia *ifm = FUNC4(ctx);

	FUNC1("ixl_media_change: begin");

	if (FUNC0(ifm->ifm_media) != IFM_ETHER)
		return (EINVAL);

	FUNC2(FUNC3(ctx), "Media change is not supported.\n");
	return (ENODEV);
}