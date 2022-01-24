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
struct vmxnet3_softc {int /*<<< orphan*/  vmx_ioh1; int /*<<< orphan*/  vmx_iot1; } ;

/* Variables and functions */
 int BUS_SPACE_BARRIER_READ ; 
 int BUS_SPACE_BARRIER_WRITE ; 
 int /*<<< orphan*/  VMXNET3_BAR1_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vmxnet3_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vmxnet3_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC3(struct vmxnet3_softc *sc, uint32_t cmd)
{

	FUNC2(sc, cmd);
	FUNC0(sc->vmx_iot1, sc->vmx_ioh1, 0, 0,
	    BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
	return (FUNC1(sc, VMXNET3_BAR1_CMD));
}