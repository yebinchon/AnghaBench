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
typedef  scalar_t__ uint16_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct bxe_softc *sc,
                         uint8_t          port,
                         uint8_t          inc)
{
    uint16_t rcq, bd;
    uint32_t tmp_reg = FUNC5(sc, FUNC3(port));

    rcq = FUNC4(tmp_reg) + inc;
    bd = FUNC1(tmp_reg) + inc;

    tmp_reg = FUNC2(rcq, bd);
    FUNC6(sc, FUNC3(port), tmp_reg);

    FUNC0(sc, DBG_LOAD,
          "UNDI producer [%d] rings bd -> 0x%04x, rcq -> 0x%04x\n",
          port, bd, rcq);
}