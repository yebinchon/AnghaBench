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
typedef  scalar_t__ uint32_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int /*<<< orphan*/  HW_LOCK_RESOURCE_DRV_FLAGS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (struct bxe_softc*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct bxe_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bxe_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct bxe_softc *sc,
                     uint32_t         flags,
                     uint32_t         set)
{
    uint32_t drv_flags;

    if (FUNC3(sc, drv_flags)) {
        FUNC6(sc, HW_LOCK_RESOURCE_DRV_FLAGS);
        drv_flags = FUNC4(sc, drv_flags);

        if (set) {
            FUNC2(drv_flags, flags);
        } else {
            FUNC1(drv_flags, flags);
        }

        FUNC5(sc, drv_flags, drv_flags);
        FUNC0(sc, DBG_LOAD, "drv_flags 0x%08x\n", drv_flags);

        FUNC7(sc, HW_LOCK_RESOURCE_DRV_FLAGS);
    }
}