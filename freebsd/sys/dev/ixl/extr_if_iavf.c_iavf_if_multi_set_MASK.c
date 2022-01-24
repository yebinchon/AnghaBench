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
struct iavf_sc {int /*<<< orphan*/  promisc_flags; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_VF_MULTICAST_PROMISC ; 
 int /*<<< orphan*/  IAVF_FLAG_AQ_ADD_MAC_FILTER ; 
 int /*<<< orphan*/  IAVF_FLAG_AQ_CONFIGURE_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ MAX_MULTICAST_ADDR ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct iavf_sc*) ; 
 int /*<<< orphan*/  iavf_mc_filter_apply ; 
 int /*<<< orphan*/  FUNC3 (struct iavf_sc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iavf_sc*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct iavf_sc* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(if_ctx_t ctx)
{
	struct iavf_sc *sc = FUNC7(ctx);

	FUNC0("iavf_if_multi_set: begin");

	if (FUNC1(FUNC5(FUNC6(ctx)) >=
	    MAX_MULTICAST_ADDR)) {
		/* Delete MC filters and enable mulitcast promisc instead */
		FUNC2(sc);
		sc->promisc_flags |= FLAG_VF_MULTICAST_PROMISC;
		FUNC3(sc, IAVF_FLAG_AQ_CONFIGURE_PROMISC);
		return;
	}

	/* If there aren't too many filters, delete existing MC filters */
	FUNC2(sc);

	/* And (re-)install filters for all mcast addresses */
	if (FUNC4(FUNC6(ctx), iavf_mc_filter_apply, sc) >
	    0)
		FUNC3(sc, IAVF_FLAG_AQ_ADD_MAC_FILTER);
}