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
struct TYPE_2__ {int /*<<< orphan*/  shmem2_base; int /*<<< orphan*/  shmem_base; int /*<<< orphan*/  chip_id; } ;
struct bxe_softc {int num_queues; TYPE_1__ devinfo; int /*<<< orphan*/  link_vars; } ;

/* Variables and functions */
 int AEU_INPUTS_ATTN_BITS_SPIO5 ; 
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 scalar_t__ MISC_REG_AEU_AFTER_INVERT_1_FUNC_0 ; 
 int FUNC1 (struct bxe_softc*,scalar_t__) ; 
 int FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct bxe_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 

__attribute__((used)) static void
FUNC18(struct bxe_softc *sc,
             int              load_code)
{
    int i;

    for (i = 0; i < sc->num_queues; i++) {
        FUNC6(sc, i);
    }

    FUNC17(); /* ensure status block indices were read */

    FUNC8(sc);
    FUNC10(sc);

    if (FUNC0(sc)) {
        return;
    }

    /* initialize MOD_ABS interrupts */
    FUNC15(sc, &sc->link_vars,
                           sc->devinfo.chip_id,
                           sc->devinfo.shmem_base,
                           sc->devinfo.shmem2_base,
                           FUNC2(sc));

    FUNC4(sc);
    FUNC14(sc);
    FUNC9(sc);
    FUNC5(sc);
    FUNC7(sc, load_code);
    FUNC12(sc);
    FUNC13(sc);

    /* flush all before enabling interrupts */
    FUNC16();

    FUNC11(sc);

    /* check for SPIO5 */
    FUNC3(sc,
                             FUNC1(sc,
                                    (MISC_REG_AEU_AFTER_INVERT_1_FUNC_0 +
                                     FUNC2(sc)*4)) &
                             AEU_INPUTS_ATTN_BITS_SPIO5);
}