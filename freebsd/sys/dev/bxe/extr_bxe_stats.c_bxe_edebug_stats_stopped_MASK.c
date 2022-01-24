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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ EDEBUG_DRIVER_IF_OP_CODE_DISABLE_STAT ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * edebug_driver_if ; 

__attribute__((used)) static uint8_t
FUNC2(struct bxe_softc *sc)
{
    uint32_t val;

    if (FUNC0(sc, edebug_driver_if[1])) {
        val = FUNC1(sc, edebug_driver_if[1]);

        if (val == EDEBUG_DRIVER_IF_OP_CODE_DISABLE_STAT) {
            return (TRUE);
        }
    }

    return (FALSE);
}