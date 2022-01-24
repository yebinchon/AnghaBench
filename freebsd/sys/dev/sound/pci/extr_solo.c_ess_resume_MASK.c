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
typedef  int uint16_t ;
struct ess_info {int /*<<< orphan*/  io; scalar_t__ newspeed; int /*<<< orphan*/  vc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  ESS_PCI_CONFIG ; 
 int /*<<< orphan*/  ESS_PCI_DDMACONTROL ; 
 int /*<<< orphan*/  ESS_PCI_LEGACYCONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct ess_info*) ; 
 scalar_t__ FUNC1 (struct ess_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ess_info*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ess_info*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct ess_info* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int 
FUNC9(device_t dev)
{
	uint16_t ddma;
	struct ess_info *sc = FUNC6(dev);
	
	FUNC0(sc);
	ddma = FUNC8(sc->vc) | 1;
	FUNC5(dev, ESS_PCI_LEGACYCONTROL, 0x805f, 2);
	FUNC5(dev, ESS_PCI_DDMACONTROL, ddma, 2);
	FUNC5(dev, ESS_PCI_CONFIG, 0, 2);

    	if (FUNC1(sc)) {
		FUNC3(sc);
		goto no;
	}
	FUNC3(sc);
    	if (FUNC4(dev))
		goto no;
	FUNC0(sc);
	if (sc->newspeed)
		FUNC2(sc, 0x71, 0x2a);

	FUNC7(sc->io, 0x7, 0xb0, 1); /* enable irqs */
	FUNC3(sc);

	return 0;
 no:
	return EIO;
}