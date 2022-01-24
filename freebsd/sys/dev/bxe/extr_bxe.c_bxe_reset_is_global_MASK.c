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
typedef  int uint32_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,int) ; 
 int BXE_GLOBAL_RESET_BIT ; 
 int /*<<< orphan*/  BXE_RECOVERY_GLOB_REG ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC1 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static uint8_t
FUNC2(struct bxe_softc *sc)
{
    uint32_t val = FUNC1(sc, BXE_RECOVERY_GLOB_REG);
    FUNC0(sc, DBG_LOAD, "GLOB_REG=0x%08x\n", val);
    return (val & BXE_GLOBAL_RESET_BIT) ? TRUE : FALSE;
}