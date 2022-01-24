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
 scalar_t__ BAR_CSTRORM_INTMEM ; 
 scalar_t__ BAR_USTRORM_INTMEM ; 
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*) ; 
 scalar_t__ CSTORM_IGU_MODE_OFFSET ; 
 int /*<<< orphan*/  HC_IGU_BC_MODE ; 
 int /*<<< orphan*/  HC_IGU_NBC_MODE ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ USTORM_AGG_DATA_OFFSET ; 
 int USTORM_AGG_DATA_SIZE ; 

__attribute__((used)) static void
FUNC4(struct bxe_softc *sc)
{
    int i;

    /*
     * Zero this manually as its initialization is currently missing
     * in the initTool.
     */
    for (i = 0; i < (USTORM_AGG_DATA_SIZE >> 2); i++) {
        FUNC2(sc,
               (BAR_USTRORM_INTMEM + USTORM_AGG_DATA_OFFSET + (i * 4)),
               0);
    }

    if (!FUNC1(sc)) {
        FUNC3(sc, (BAR_CSTRORM_INTMEM + CSTORM_IGU_MODE_OFFSET),
                FUNC0(sc) ? HC_IGU_BC_MODE : HC_IGU_NBC_MODE);
    }
}