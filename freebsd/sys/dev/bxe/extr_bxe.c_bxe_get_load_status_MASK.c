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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,int,...) ; 
 int BXE_PATH0_LOAD_CNT_MASK ; 
 int BXE_PATH0_LOAD_CNT_SHIFT ; 
 int BXE_PATH1_LOAD_CNT_MASK ; 
 int BXE_PATH1_LOAD_CNT_SHIFT ; 
 int /*<<< orphan*/  BXE_RECOVERY_GLOB_REG ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int FUNC1 (struct bxe_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint8_t
FUNC2(struct bxe_softc *sc,
                    int              engine)
{
    uint32_t mask = engine ? BXE_PATH1_LOAD_CNT_MASK :
                             BXE_PATH0_LOAD_CNT_MASK;
    uint32_t shift = engine ? BXE_PATH1_LOAD_CNT_SHIFT :
                              BXE_PATH0_LOAD_CNT_SHIFT;
    uint32_t val = FUNC1(sc, BXE_RECOVERY_GLOB_REG);

    FUNC0(sc, DBG_LOAD, "Old value for GLOB_REG=0x%08x\n", val);

    val = ((val & mask) >> shift);

    FUNC0(sc, DBG_LOAD, "Load mask engine %d = 0x%08x\n", engine, val);

    return (val != 0);
}