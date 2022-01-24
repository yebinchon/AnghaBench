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
struct mtkswitch_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  FUNC0 (struct mtkswitch_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTKSWITCH_STRT ; 
 int /*<<< orphan*/  FUNC3 (struct mtkswitch_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtkswitch_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STRT_RESET ; 

__attribute__((used)) static int
FUNC5(struct mtkswitch_softc *sc)
{

	FUNC1(sc, MA_NOTOWNED);
	FUNC0(sc);
	FUNC4(sc, MTKSWITCH_STRT, STRT_RESET);
	while (FUNC2(sc, MTKSWITCH_STRT) != 0);
	FUNC3(sc);

	return (0);
}