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
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  DBG_INTR ; 
 int IGU_PF_CONF_ATTN_BIT_EN ; 
 int IGU_PF_CONF_INT_LINE_EN ; 
 int IGU_PF_CONF_MSI_MSIX_EN ; 
 int /*<<< orphan*/  IGU_REG_PF_CONFIGURATION ; 
 int FUNC2 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5(struct bxe_softc *sc)
{
    uint32_t val = FUNC2(sc, IGU_REG_PF_CONFIGURATION);

    val &= ~(IGU_PF_CONF_MSI_MSIX_EN |
             IGU_PF_CONF_INT_LINE_EN |
             IGU_PF_CONF_ATTN_BIT_EN);

    FUNC0(sc, DBG_INTR, "write %x to IGU\n", val);

    /* flush all outstanding writes */
    FUNC4();

    FUNC3(sc, IGU_REG_PF_CONFIGURATION, val);
    if (FUNC2(sc, IGU_REG_PF_CONFIGURATION) != val) {
        FUNC1(sc, "proper val not read from IGU!\n");
    }
}