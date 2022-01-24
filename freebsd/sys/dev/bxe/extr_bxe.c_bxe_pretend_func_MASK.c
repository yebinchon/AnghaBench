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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  E1H_FUNC_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*) ; 

__attribute__((used)) static int
FUNC4(struct bxe_softc *sc,
                 uint16_t         pretend_func_val)
{
    uint32_t pretend_reg;

    if (FUNC0(sc) && (pretend_func_val > E1H_FUNC_MAX)) {
        return (-1);
    }

    /* get my own pretend register */
    pretend_reg = FUNC3(sc);
    FUNC2(sc, pretend_reg, pretend_func_val);
    FUNC1(sc, pretend_reg);
    return (0);
}