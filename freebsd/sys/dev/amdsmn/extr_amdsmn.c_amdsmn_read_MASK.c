#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct amdsmn_softc {int /*<<< orphan*/  smn_lock; TYPE_1__* smn_pciid; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  amdsmn_data_reg; int /*<<< orphan*/  amdsmn_addr_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct amdsmn_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC6(device_t dev, uint32_t addr, uint32_t *value)
{
	struct amdsmn_softc *sc = FUNC1(dev);
	device_t parent;

	parent = FUNC0(dev);

	FUNC2(&sc->smn_lock);
	FUNC5(parent, sc->smn_pciid->amdsmn_addr_reg, addr, 4);
	*value = FUNC4(parent, sc->smn_pciid->amdsmn_data_reg, 4);
	FUNC3(&sc->smn_lock);

	return (0);
}