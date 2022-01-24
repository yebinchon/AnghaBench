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
struct ifnet {struct bce_softc* if_softc; } ;
struct bce_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bce_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bce_softc*) ; 
 int /*<<< orphan*/  BCE_VERBOSE_SEND ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 

__attribute__((used)) static void
FUNC5(struct ifnet *ifp)
{
	struct bce_softc *sc = ifp->if_softc;

	FUNC2(BCE_VERBOSE_SEND);

	FUNC0(sc);
	FUNC4(ifp);
	FUNC1(sc);

	FUNC3(BCE_VERBOSE_SEND);
}