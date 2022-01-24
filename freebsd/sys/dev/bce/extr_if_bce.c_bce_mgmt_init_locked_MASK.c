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
struct ifnet {int dummy; } ;
struct bce_softc {int bce_flags; struct ifnet* bce_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bce_softc*) ; 
 int BCE_MFW_ENABLE_FLAG ; 
 int /*<<< orphan*/  BCE_MISC_ENABLE_DEFAULT ; 
 int /*<<< orphan*/  BCE_MISC_ENABLE_SET_BITS ; 
 int /*<<< orphan*/  BCE_VERBOSE_RESET ; 
 int /*<<< orphan*/  BCE_VERBOSE_SPECIAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bce_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct bce_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bce_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*) ; 

__attribute__((used)) static void
FUNC8(struct bce_softc *sc)
{
	struct ifnet *ifp;

	FUNC1(BCE_VERBOSE_RESET);

	FUNC0(sc);

	/* Bail out if management firmware is not running. */
	if (!(sc->bce_flags & BCE_MFW_ENABLE_FLAG)) {
		FUNC3(sc, BCE_VERBOSE_SPECIAL,
		    "No management firmware running...\n");
		goto bce_mgmt_init_locked_exit;
	}

	ifp = sc->bce_ifp;

	/* Enable all critical blocks in the MAC. */
	FUNC6(sc, BCE_MISC_ENABLE_SET_BITS, BCE_MISC_ENABLE_DEFAULT);
	FUNC5(sc, BCE_MISC_ENABLE_SET_BITS);
	FUNC4(20);

	FUNC7(ifp);

bce_mgmt_init_locked_exit:
	FUNC2(BCE_VERBOSE_RESET);
}