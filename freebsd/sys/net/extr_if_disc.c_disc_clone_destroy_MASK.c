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
struct ifnet {struct disc_softc* if_softc; } ;
struct disc_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DISC ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct disc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 

__attribute__((used)) static void
FUNC4(struct ifnet *ifp)
{
	struct disc_softc	*sc;

	sc = ifp->if_softc;

	FUNC0(ifp);
	FUNC2(ifp);
	FUNC3(ifp);

	FUNC1(sc, M_DISC);
}