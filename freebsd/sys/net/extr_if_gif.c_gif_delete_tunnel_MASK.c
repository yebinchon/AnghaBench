#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gif_softc {scalar_t__ gif_family; int /*<<< orphan*/  gif_hdr; } ;
struct TYPE_3__ {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gif_softc*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct gif_softc*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int /*<<< orphan*/  M_GIF ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 int /*<<< orphan*/  chain ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gif_ioctl_sx ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  srchash ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct gif_softc *sc)
{

	FUNC5(&gif_ioctl_sx, SA_XLOCKED);
	if (sc->gif_family != 0) {
		FUNC0(sc, srchash);
		FUNC0(sc, chain);
		/* Wait until it become safe to free gif_hdr */
		FUNC2();
		FUNC3(sc->gif_hdr, M_GIF);
	}
	sc->gif_family = 0;
	FUNC1(sc)->if_drv_flags &= ~IFF_DRV_RUNNING;
	FUNC4(FUNC1(sc), LINK_STATE_DOWN);
}