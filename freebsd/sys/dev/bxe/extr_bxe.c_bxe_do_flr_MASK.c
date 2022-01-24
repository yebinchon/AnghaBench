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
struct TYPE_2__ {scalar_t__ bc_ver; } ;
struct bxe_softc {TYPE_1__ devinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*) ; 
 scalar_t__ FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  DRV_MSG_CODE_INITIATE_FLR ; 
 scalar_t__ REQ_BC_VER_4_INITIATE_FLR ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*) ; 

__attribute__((used)) static int
FUNC6(struct bxe_softc *sc)
{
    int i;

    /* only E2 and onwards support FLR */
    if (FUNC2(sc)) {
        FUNC0(sc, DBG_LOAD, "FLR not supported in E1/E1H\n");
        return (-1);
    }

    /* only bootcode REQ_BC_VER_4_INITIATE_FLR and onwards support flr */
    if (sc->devinfo.bc_ver < REQ_BC_VER_4_INITIATE_FLR) {
        FUNC0(sc, DBG_LOAD, "FLR not supported by BC_VER: 0x%08x\n",
              sc->devinfo.bc_ver);
        return (-1);
    }

    /* Wait for Transaction Pending bit clean */
    for (i = 0; i < 4; i++) {
        if (i) {
            FUNC3(((1 << (i - 1)) * 100) * 1000);
        }

        if (!FUNC5(sc)) {
            goto clear;
        }
    }

    FUNC1(sc, "PCIE transaction is not cleared, "
              "proceeding with reset anyway\n");

clear:

    FUNC0(sc, DBG_LOAD, "Initiating FLR\n");
    FUNC4(sc, DRV_MSG_CODE_INITIATE_FLR, 0);

    return (0);
}