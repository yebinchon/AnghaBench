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
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int HW_LOCK_MAX_RESOURCE_VALUE ; 
 int MISC_REG_DRIVER_CONTROL_1 ; 
 int MISC_REG_DRIVER_CONTROL_7 ; 
 int FUNC2 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int,int) ; 
 int FUNC4 (struct bxe_softc*) ; 

__attribute__((used)) static int
FUNC5(struct bxe_softc *sc,
                    uint32_t         resource)
{
    uint32_t lock_status;
    uint32_t resource_bit = (1 << resource);
    int func = FUNC4(sc);
    uint32_t hw_lock_control_reg;
    int cnt;

    /* validate the resource is within range */
    if (resource > HW_LOCK_MAX_RESOURCE_VALUE) {
        FUNC0(sc, "(resource 0x%x > HW_LOCK_MAX_RESOURCE_VALUE)"
            " resource_bit 0x%x\n", resource, resource_bit);
        return (-1);
    }

    if (func <= 5) {
        hw_lock_control_reg = (MISC_REG_DRIVER_CONTROL_1 + (func * 8));
    } else {
        hw_lock_control_reg =
                (MISC_REG_DRIVER_CONTROL_7 + ((func - 6) * 8));
    }

    /* validate the resource is not already taken */
    lock_status = FUNC2(sc, hw_lock_control_reg);
    if (lock_status & resource_bit) {
        FUNC0(sc, "resource (0x%x) in use (status 0x%x bit 0x%x)\n",
              resource, lock_status, resource_bit);
        return (-1);
    }

    /* try every 5ms for 5 seconds */
    for (cnt = 0; cnt < 1000; cnt++) {
        FUNC3(sc, (hw_lock_control_reg + 4), resource_bit);
        lock_status = FUNC2(sc, hw_lock_control_reg);
        if (lock_status & resource_bit) {
            return (0);
        }
        FUNC1(5000);
    }

    FUNC0(sc, "Resource 0x%x resource_bit 0x%x lock timeout!\n",
        resource, resource_bit);
    return (-1);
}