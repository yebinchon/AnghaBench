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
typedef  int uint64_t ;
struct pcr_softc {int* pcr_vals; } ;
struct cf_setting {int freq; } ;
typedef  int register_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int PSL_EE ; 
 int PSR_COMPLETED ; 
 int PSR_RECEIVED ; 
 int /*<<< orphan*/  SCOM_PCR ; 
 int SCOM_PCR_BIT ; 
 int /*<<< orphan*/  SCOM_PSR ; 
 struct pcr_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(device_t dev, const struct cf_setting *set)
{
	struct pcr_softc *sc;
	register_t pcr, msr;
	uint64_t psr;
	
	if (set == NULL)
		return (EINVAL);
	sc = FUNC1(dev);

	/* Construct the new PCR */

	pcr = SCOM_PCR_BIT;

	if (set->freq == 10000)
		pcr |= sc->pcr_vals[0];
	else if (set->freq == 5000)
		pcr |= sc->pcr_vals[1];
	else if (set->freq == 2500)
		pcr |= sc->pcr_vals[2];

	msr = FUNC3(); 
	FUNC4(msr & ~PSL_EE); FUNC2();

	/* 970MP requires PCR and PCRH to be cleared first */

	FUNC6(SCOM_PCR,0);			/* Clear PCRH */
	FUNC6(SCOM_PCR,SCOM_PCR_BIT);	/* Clear PCR */

	/* Set PCR */

	FUNC6(SCOM_PCR, pcr);

	/* Wait for completion */

	do {
		FUNC0(100);
		psr = FUNC5(SCOM_PSR);
	} while ((psr & PSR_RECEIVED) && !(psr & PSR_COMPLETED));

	FUNC4(msr); FUNC2();

	return (0);
}