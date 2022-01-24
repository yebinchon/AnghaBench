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
struct pfi_kif {struct ifnet* pfik_ifp; } ;
struct ifnet {struct pfi_kif* if_pf_kif; int /*<<< orphan*/  if_xname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  V_pfi_update ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 struct pfi_kif* FUNC2 (struct pfi_kif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pfi_kif*) ; 

__attribute__((used)) static void
FUNC4(struct ifnet *ifp, struct pfi_kif *kif)
{

	FUNC0();

	V_pfi_update++;
	kif = FUNC2(kif, ifp->if_xname);
	FUNC1(ifp);
	kif->pfik_ifp = ifp;
	ifp->if_pf_kif = kif;
	FUNC3(kif);
}