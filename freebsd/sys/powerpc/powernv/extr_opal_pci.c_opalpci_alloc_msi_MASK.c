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
typedef  scalar_t__ vmem_addr_t ;
struct opalpci_softc {int /*<<< orphan*/ * msi_vmem; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int M_BESTFIT ; 
 int M_WAITOK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VMEM_ADDR_MAX ; 
 int /*<<< orphan*/  VMEM_ADDR_MIN ; 
 struct opalpci_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*) ; 

__attribute__((used)) static int
FUNC6(device_t dev, device_t child, int count, int maxcount,
    int *irqs)
{
	struct opalpci_softc *sc;
	vmem_addr_t start;
	phandle_t xref;
	int err, i;

	sc = FUNC2(dev);
	if (sc->msi_vmem == NULL)
		return (ENODEV);

	err = FUNC5(sc->msi_vmem, count, FUNC4(count), 0, 0,
	    VMEM_ADDR_MIN, VMEM_ADDR_MAX, M_BESTFIT | M_WAITOK, &start);

	if (err)
		return (err);

	xref = FUNC1(FUNC3(dev));
	for (i = 0; i < count; i++)
		irqs[i] = FUNC0(xref, start + i);

	return (0);
}