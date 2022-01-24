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
struct vmxnet3_softc {int /*<<< orphan*/  vmx_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOTSUP ; 
 int /*<<< orphan*/  VMXNET3_BAR1_UVRS ; 
 int /*<<< orphan*/  VMXNET3_BAR1_VRRS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct vmxnet3_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vmxnet3_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct vmxnet3_softc *sc)
{
	device_t dev;
	uint32_t version;

	dev = sc->vmx_dev;

	version = FUNC1(sc, VMXNET3_BAR1_VRRS);
	if ((version & 0x01) == 0) {
		FUNC0(dev, "unsupported hardware version %#x\n",
		    version);
		return (ENOTSUP);
	}
	FUNC2(sc, VMXNET3_BAR1_VRRS, 1);

	version = FUNC1(sc, VMXNET3_BAR1_UVRS);
	if ((version & 0x01) == 0) {
		FUNC0(dev, "unsupported UPT version %#x\n", version);
		return (ENOTSUP);
	}
	FUNC2(sc, VMXNET3_BAR1_UVRS, 1);

	return (0);
}