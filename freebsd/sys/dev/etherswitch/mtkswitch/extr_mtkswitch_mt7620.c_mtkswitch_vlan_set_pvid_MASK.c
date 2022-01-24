#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* mtkswitch_write ) (struct mtkswitch_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct mtkswitch_softc {TYPE_1__ hal; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int PPBV_VID_MASK ; 
 int /*<<< orphan*/  FUNC4 (struct mtkswitch_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mtkswitch_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct mtkswitch_softc *sc, int port, int pvid)
{
	uint32_t val;

	FUNC0(sc, MA_OWNED);
	val = FUNC3(pvid & PPBV_VID_MASK);
	sc->hal.mtkswitch_write(sc, FUNC1(port), val);
	sc->hal.mtkswitch_write(sc, FUNC2(port), val);

	return (0);
}