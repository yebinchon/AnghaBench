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
typedef  int /*<<< orphan*/  u32 ;
struct bce_softc {int bce_flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BCE_DRV_MSG_CODE_UNLOAD ; 
 int /*<<< orphan*/  BCE_DRV_MSG_CODE_UNLOAD_LNK_DN ; 
 int /*<<< orphan*/  FUNC0 (struct bce_softc*) ; 
 int BCE_NO_WOL_FLAG ; 
 int /*<<< orphan*/  FUNC1 (struct bce_softc*) ; 
 int /*<<< orphan*/  BCE_VERBOSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bce_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bce_softc*) ; 
 struct bce_softc* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct bce_softc *sc = FUNC6(dev);
	u32 msg;

	FUNC2(BCE_VERBOSE);

	FUNC0(sc);
	FUNC5(sc);
	if (sc->bce_flags & BCE_NO_WOL_FLAG)
		msg = BCE_DRV_MSG_CODE_UNLOAD_LNK_DN;
	else
		msg = BCE_DRV_MSG_CODE_UNLOAD;
	FUNC4(sc, msg);
	FUNC1(sc);

	FUNC3(BCE_VERBOSE);

	return (0);
}