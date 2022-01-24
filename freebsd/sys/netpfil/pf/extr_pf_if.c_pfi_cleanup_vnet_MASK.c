#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pfi_kif {TYPE_2__* pfik_ifp; TYPE_1__* pfik_group; } ;
struct TYPE_4__ {int /*<<< orphan*/ * if_pf_kif; } ;
struct TYPE_3__ {int /*<<< orphan*/ * ifg_pf_kif; } ;

/* Variables and functions */
 struct pfi_kif* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pfi_kif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PFI_MTYPE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct pfi_kif* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pfi_kif*) ; 
 int /*<<< orphan*/ * V_pfi_all ; 
 struct pfi_kif* V_pfi_buffer ; 
 int /*<<< orphan*/  V_pfi_ifs ; 
 int /*<<< orphan*/  V_pfi_unlinked_kifs ; 
 int /*<<< orphan*/  FUNC5 (struct pfi_kif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pfi_ifhead ; 
 int /*<<< orphan*/  pfi_unlnkdkifs_mtx ; 
 int /*<<< orphan*/  pfik_list ; 

void
FUNC9(void)
{
	struct pfi_kif *kif;

	FUNC2();

	V_pfi_all = NULL;
	while ((kif = FUNC3(pfi_ifhead, &V_pfi_ifs))) {
		FUNC4(pfi_ifhead, &V_pfi_ifs, kif);
		if (kif->pfik_group)
			kif->pfik_group->ifg_pf_kif = NULL;
		if (kif->pfik_ifp) {
			FUNC6(kif->pfik_ifp);
			kif->pfik_ifp->if_pf_kif = NULL;
		}
		FUNC5(kif, PFI_MTYPE);
	}

	FUNC7(&pfi_unlnkdkifs_mtx);
	while ((kif = FUNC0(&V_pfi_unlinked_kifs))) {
		FUNC1(kif, pfik_list);
		FUNC5(kif, PFI_MTYPE);
	}
	FUNC8(&pfi_unlnkdkifs_mtx);

	FUNC5(V_pfi_buffer, PFI_MTYPE);
}