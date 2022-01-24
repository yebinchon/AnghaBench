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
struct TYPE_2__ {int /*<<< orphan*/  (* mtkswitch_read ) (struct mtkswitch_softc*,int /*<<< orphan*/ ) ;} ;
struct mtkswitch_softc {TYPE_1__ hal; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct mtkswitch_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev, int reg)
{
	struct mtkswitch_softc *sc = FUNC4(dev);
	uint32_t val;

	val = sc->hal.mtkswitch_read(sc, FUNC3(reg));
	if (FUNC1(reg))
		return (FUNC0(val));
	return (FUNC2(val));
}