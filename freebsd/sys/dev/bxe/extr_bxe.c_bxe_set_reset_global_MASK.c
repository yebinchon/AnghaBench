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
 int BXE_GLOBAL_RESET_BIT ; 
 int /*<<< orphan*/  BXE_RECOVERY_GLOB_REG ; 
 int /*<<< orphan*/  HW_LOCK_RESOURCE_RECOVERY_REG ; 
 int FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bxe_softc *sc)
{
    uint32_t val;
    FUNC2(sc, HW_LOCK_RESOURCE_RECOVERY_REG);
    val = FUNC0(sc, BXE_RECOVERY_GLOB_REG);
    FUNC1(sc, BXE_RECOVERY_GLOB_REG, val | BXE_GLOBAL_RESET_BIT);
    FUNC3(sc, HW_LOCK_RESOURCE_RECOVERY_REG);
}