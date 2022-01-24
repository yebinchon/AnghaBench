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
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  PXP2_REG_RD_START_INIT ; 
 int /*<<< orphan*/  PXP2_REG_RQ_RBC_DONE ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3(struct bxe_softc *sc)
{
    if (!FUNC0(sc)) {
        FUNC1(sc, PXP2_REG_RD_START_INIT, 0);
        FUNC1(sc, PXP2_REG_RQ_RBC_DONE, 0);
        FUNC2();
    }
}