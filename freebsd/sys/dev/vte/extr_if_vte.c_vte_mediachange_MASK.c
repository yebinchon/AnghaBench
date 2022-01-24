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
struct vte_softc {int dummy; } ;
struct ifnet {struct vte_softc* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vte_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vte_softc*) ; 
 int FUNC2 (struct ifnet*) ; 

__attribute__((used)) static int
FUNC3(struct ifnet *ifp)
{
	struct vte_softc *sc;
	int error;

	sc = ifp->if_softc;
	FUNC0(sc);
	error = FUNC2(ifp);
	FUNC1(sc);
	return (error);
}