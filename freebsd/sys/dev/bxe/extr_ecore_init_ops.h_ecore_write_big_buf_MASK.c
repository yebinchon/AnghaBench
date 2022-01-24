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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 scalar_t__ FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct bxe_softc *sc, uint32_t addr, uint32_t len,
				uint8_t wb)
{
	if (FUNC1(sc))
		FUNC6(sc, FUNC3(sc), addr, len);

	/* in E1 chips BIOS initiated ZLR may interrupt widebus writes */
	else if (wb && FUNC0(sc))
		FUNC4(sc, addr, FUNC2(sc), len);

	/* in later chips PXP root complex handles BIOS ZLR w/o interrupting */
	else
		FUNC5(sc, addr, FUNC2(sc), len);
}