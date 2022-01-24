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
struct pcib_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENODEV ; 
 int ENXIO ; 
 scalar_t__ PCIB_SUPPORTED_ARI_VER ; 
 int PCIEM_CAP2_ARI ; 
 int PCIER_DEVICE_CAP2 ; 
 int /*<<< orphan*/  PCIY_EXPRESS ; 
 int /*<<< orphan*/  PCIZ_ARI ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ bootverbose ; 
 struct pcib_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pcib_softc*,int) ; 

__attribute__((used)) static int
FUNC7(device_t pcib, device_t dev)
{
	struct pcib_softc *sc;
	int error;
	uint32_t cap2;
	int ari_cap_off;
	uint32_t ari_ver;
	uint32_t pcie_pos;

	sc = FUNC1(pcib);

	/*
	 * ARI is controlled in a register in the PCIe capability structure.
	 * If the downstream port does not have the PCIe capability structure
	 * then it does not support ARI.
	 */
	error = FUNC3(pcib, PCIY_EXPRESS, &pcie_pos);
	if (error != 0)
		return (ENODEV);

	/* Check that the PCIe port advertises ARI support. */
	cap2 = FUNC5(pcib, pcie_pos + PCIER_DEVICE_CAP2, 4);
	if (!(cap2 & PCIEM_CAP2_ARI))
		return (ENODEV);

	/*
	 * Check that the endpoint device advertises ARI support via the ARI
	 * extended capability structure.
	 */
	error = FUNC4(dev, PCIZ_ARI, &ari_cap_off);
	if (error != 0)
		return (ENODEV);

	/*
	 * Finally, check that the endpoint device supports the same version
	 * of ARI that we do.
	 */
	ari_ver = FUNC5(dev, ari_cap_off, 4);
	if (FUNC0(ari_ver) != PCIB_SUPPORTED_ARI_VER) {
		if (bootverbose)
			FUNC2(pcib,
			    "Unsupported version of ARI (%d) detected\n",
			    FUNC0(ari_ver));

		return (ENXIO);
	}

	FUNC6(sc, pcie_pos);

	return (0);
}