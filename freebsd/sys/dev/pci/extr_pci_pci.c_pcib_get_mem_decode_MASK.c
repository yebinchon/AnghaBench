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
struct pcib_softc {void* pmemlimit; void* pmembase; void* memlimit; void* membase; int /*<<< orphan*/  dev; } ;
typedef  int pci_addr_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int PCIM_BRPM_64 ; 
 int PCIM_BRPM_MASK ; 
 int /*<<< orphan*/  PCIR_MEMBASE_1 ; 
 int /*<<< orphan*/  PCIR_MEMLIMIT_1 ; 
 int /*<<< orphan*/  PCIR_PMBASEH_1 ; 
 int /*<<< orphan*/  PCIR_PMBASEL_1 ; 
 int /*<<< orphan*/  PCIR_PMLIMITH_1 ; 
 int /*<<< orphan*/  PCIR_PMLIMITL_1 ; 
 void* FUNC0 (int,int) ; 
 void* FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct pcib_softc *sc)
{
	device_t	dev;
	pci_addr_t	pmemlow;

	dev = sc->dev;

	sc->membase = FUNC0(0,
	    FUNC2(dev, PCIR_MEMBASE_1, 2));
	sc->memlimit = FUNC1(0,
	    FUNC2(dev, PCIR_MEMLIMIT_1, 2));

	pmemlow = FUNC2(dev, PCIR_PMBASEL_1, 2);
	if ((pmemlow & PCIM_BRPM_MASK) == PCIM_BRPM_64)
		sc->pmembase = FUNC0(
		    FUNC2(dev, PCIR_PMBASEH_1, 4), pmemlow);
	else
		sc->pmembase = FUNC0(0, pmemlow);

	pmemlow = FUNC2(dev, PCIR_PMLIMITL_1, 2);
	if ((pmemlow & PCIM_BRPM_MASK) == PCIM_BRPM_64)
		sc->pmemlimit = FUNC1(
		    FUNC2(dev, PCIR_PMLIMITH_1, 4), pmemlow);
	else
		sc->pmemlimit = FUNC1(0, pmemlow);
}