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
typedef  int u_int32_t ;
struct bfe_softc {int dummy; } ;

/* Variables and functions */
 int BFE_CLOCK ; 
 int BFE_FGC ; 
 int BFE_IBE ; 
 int BFE_RESET ; 
 int /*<<< orphan*/  BFE_SBIMSTATE ; 
 int /*<<< orphan*/  BFE_SBTMSHIGH ; 
 int /*<<< orphan*/  BFE_SBTMSLOW ; 
 int BFE_SERR ; 
 int BFE_TO ; 
 int FUNC0 (struct bfe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfe_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct bfe_softc*) ; 

__attribute__((used)) static void
FUNC4(struct bfe_softc *sc)
{
	u_int32_t val;

	/* Disable the core */
	FUNC3(sc);

	/* and bring it back up */
	FUNC1(sc, BFE_SBTMSLOW, (BFE_RESET | BFE_CLOCK | BFE_FGC));
	FUNC0(sc, BFE_SBTMSLOW);
	FUNC2(10);

	/* Chip bug, clear SERR, IB and TO if they are set. */
	if (FUNC0(sc, BFE_SBTMSHIGH) & BFE_SERR)
		FUNC1(sc, BFE_SBTMSHIGH, 0);
	val = FUNC0(sc, BFE_SBIMSTATE);
	if (val & (BFE_IBE | BFE_TO))
		FUNC1(sc, BFE_SBIMSTATE, val & ~(BFE_IBE | BFE_TO));

	/* Clear reset and allow it to move through the core */
	FUNC1(sc, BFE_SBTMSLOW, (BFE_CLOCK | BFE_FGC));
	FUNC0(sc, BFE_SBTMSLOW);
	FUNC2(10);

	/* Leave the clock set */
	FUNC1(sc, BFE_SBTMSLOW, BFE_CLOCK);
	FUNC0(sc, BFE_SBTMSLOW);
	FUNC2(10);
}