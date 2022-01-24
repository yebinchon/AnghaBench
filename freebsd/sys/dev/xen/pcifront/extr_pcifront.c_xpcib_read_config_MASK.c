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
typedef  int /*<<< orphan*/  u_int32_t ;
struct xpcib_softc {int /*<<< orphan*/  pdev; int /*<<< orphan*/  bus; int /*<<< orphan*/  domain; } ;
struct xen_pci_op {int offset; int size; int /*<<< orphan*/  value; int /*<<< orphan*/  devfn; int /*<<< orphan*/  bus; int /*<<< orphan*/  domain; int /*<<< orphan*/  cmd; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  XEN_PCI_OP_conf_read ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct xen_pci_op*) ; 

__attribute__((used)) static u_int32_t
FUNC4(device_t dev, int bus, int slot, int func,
				  int reg, int bytes)
{
	struct xpcib_softc *sc = (struct xpcib_softc *)FUNC2(dev);
	struct xen_pci_op op = {
		.cmd    = XEN_PCI_OP_conf_read,
		.domain = sc->domain,
		.bus    = sc->bus,
		.devfn  = FUNC1(slot, func),
		.offset = reg,
		.size   = bytes,
	};
	int err;

	err = FUNC3(sc->pdev, &op);
	
	FUNC0("read config (b=%d, s=%d, f=%d, reg=%d, len=%d, val=%x, err=%d)\n",
			bus, slot, func, reg, bytes, op.value, err);

	if (err)
		op.value = ~0;

	return op.value;
}