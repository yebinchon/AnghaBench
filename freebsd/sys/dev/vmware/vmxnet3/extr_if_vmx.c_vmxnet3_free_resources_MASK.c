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
struct vmxnet3_softc {int /*<<< orphan*/ * vmx_res1; int /*<<< orphan*/ * vmx_res0; int /*<<< orphan*/  vmx_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct vmxnet3_softc *sc)
{
	device_t dev;

	dev = sc->vmx_dev;

	if (sc->vmx_res0 != NULL) {
		FUNC0(dev, SYS_RES_MEMORY,
		    FUNC1(sc->vmx_res0), sc->vmx_res0);
		sc->vmx_res0 = NULL;
	}

	if (sc->vmx_res1 != NULL) {
		FUNC0(dev, SYS_RES_MEMORY,
		    FUNC1(sc->vmx_res1), sc->vmx_res1);
		sc->vmx_res1 = NULL;
	}
}