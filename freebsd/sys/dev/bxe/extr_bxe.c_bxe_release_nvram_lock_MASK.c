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
typedef  int uint32_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,int,int) ; 
 scalar_t__ FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  HW_LOCK_RESOURCE_NVRAM ; 
 int MCPR_NVM_SW_ARB_ARB_ARB1 ; 
 int MCPR_NVM_SW_ARB_ARB_REQ_CLR1 ; 
 int /*<<< orphan*/  MCP_REG_MCPR_NVM_SW_ARB ; 
 int NVRAM_TIMEOUT_COUNT ; 
 int FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct bxe_softc *sc)
{
    int port = FUNC5(sc);
    int count, i;
    uint32_t val = 0;

    /* adjust timeout for emulation/FPGA */
    count = NVRAM_TIMEOUT_COUNT;
    if (FUNC1(sc)) {
        count *= 100;
    }

    /* relinquish nvram interface */
    FUNC4(sc, MCP_REG_MCPR_NVM_SW_ARB,
           (MCPR_NVM_SW_ARB_ARB_REQ_CLR1 << port));

    for (i = 0; i < count*10; i++) {
        val = FUNC3(sc, MCP_REG_MCPR_NVM_SW_ARB);
        if (!(val & (MCPR_NVM_SW_ARB_ARB_ARB1 << port))) {
            break;
        }

        FUNC2(5);
    }

    if (val & (MCPR_NVM_SW_ARB_ARB_ARB1 << port)) {
        FUNC0(sc, "Cannot free access to nvram interface "
            "port %d val 0x%x (MCPR_NVM_SW_ARB_ARB_ARB1 << port)\n",
            port, val);
        return (-1);
    }

    /* release HW lock: protect against other PFs in PF Direct Assignment */
    FUNC6(sc, HW_LOCK_RESOURCE_NVRAM);

    return (0);
}