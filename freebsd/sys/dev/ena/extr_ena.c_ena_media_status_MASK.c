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
struct ifmediareq {int ifm_active; int /*<<< orphan*/  ifm_status; } ;
struct ena_adapter {int /*<<< orphan*/  global_mtx; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENA_DBG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  ENA_FLAG_LINK_UP ; 
 int /*<<< orphan*/  ENA_INFO ; 
 int /*<<< orphan*/  IFM_ACTIVE ; 
 int /*<<< orphan*/  IFM_AVALID ; 
 int IFM_ETHER ; 
 int IFM_FDX ; 
 int IFM_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct ena_adapter* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(if_t ifp, struct ifmediareq *ifmr)
{
	struct ena_adapter *adapter = FUNC2(ifp);
	FUNC1(ENA_DBG, "enter\n");

	FUNC3(&adapter->global_mtx);

	ifmr->ifm_status = IFM_AVALID;
	ifmr->ifm_active = IFM_ETHER;

	if (!FUNC0(ENA_FLAG_LINK_UP, adapter)) {
		FUNC4(&adapter->global_mtx);
		FUNC1(ENA_INFO, "Link is down\n");
		return;
	}

	ifmr->ifm_status |= IFM_ACTIVE;
	ifmr->ifm_active |= IFM_UNKNOWN | IFM_FDX;

	FUNC4(&adapter->global_mtx);
}