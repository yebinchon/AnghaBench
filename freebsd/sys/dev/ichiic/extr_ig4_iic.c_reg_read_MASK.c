#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  regs_res; } ;
typedef  TYPE_1__ ig4iic_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_BARRIER_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline uint32_t
FUNC2(ig4iic_softc_t *sc, uint32_t reg)
{
	uint32_t value;

	FUNC0(sc->regs_res, reg, 4, BUS_SPACE_BARRIER_READ);
	value = FUNC1(sc->regs_res, reg);
	return (value);
}