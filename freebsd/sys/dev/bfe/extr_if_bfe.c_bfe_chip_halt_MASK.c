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
struct bfe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFE_DMARX_CTRL ; 
 int /*<<< orphan*/  BFE_DMATX_CTRL ; 
 int /*<<< orphan*/  BFE_ENET_CTRL ; 
 int /*<<< orphan*/  BFE_ENET_DISABLE ; 
 int /*<<< orphan*/  BFE_IMASK ; 
 int /*<<< orphan*/  FUNC0 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct bfe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC5(struct bfe_softc *sc)
{
	FUNC0(sc);
	/* disable interrupts - not that it actually does..*/
	FUNC2(sc, BFE_IMASK, 0);
	FUNC1(sc, BFE_IMASK);

	FUNC2(sc, BFE_ENET_CTRL, BFE_ENET_DISABLE);
	FUNC4(sc, BFE_ENET_CTRL, BFE_ENET_DISABLE, 200, 1);

	FUNC2(sc, BFE_DMARX_CTRL, 0);
	FUNC2(sc, BFE_DMATX_CTRL, 0);
	FUNC3(10);
}