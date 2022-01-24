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
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  IGU_REG_PENDING_BITS_STATUS ; 
 scalar_t__ FUNC2 (struct bxe_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct bxe_softc *sc)
{
    uint32_t cnt = 1000;
    uint32_t pend_bits = 0;

    do {
        pend_bits = FUNC2(sc, IGU_REG_PENDING_BITS_STATUS);

        if (pend_bits == 0) {
            break;
        }

        FUNC1(1000);
    } while (--cnt > 0);

    if (cnt == 0) {
        FUNC0(sc, "Still pending IGU requests bits=0x%08x!\n", pend_bits);
        return (-1);
    }

    return (0);
}