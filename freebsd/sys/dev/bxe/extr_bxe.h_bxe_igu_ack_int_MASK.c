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
typedef  scalar_t__ uint16_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ BAR_IGU_INTMEM ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  DBG_INTR ; 
 int IGU_REG_SISR_MDPC_WMASK_LSB_UPPER ; 
 scalar_t__ FUNC1 (struct bxe_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline uint16_t
FUNC3(struct bxe_softc *sc)
{
    uint32_t igu_addr = (BAR_IGU_INTMEM + IGU_REG_SISR_MDPC_WMASK_LSB_UPPER*8);
    uint32_t result = FUNC1(sc, igu_addr);

    FUNC0(sc, DBG_INTR, "read 0x%08x from IGU addr 0x%x\n",
          result, igu_addr);

    FUNC2();
    return (result);
}