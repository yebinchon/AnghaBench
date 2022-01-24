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
struct tpm_sc {scalar_t__ interrupts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tpm_sc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tpm_sc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tpm_sc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TPM_ACCESS ; 
 int /*<<< orphan*/  TPM_ACCESS_LOC_RELINQUISH ; 
 int /*<<< orphan*/  TPM_INT_STS ; 

__attribute__((used)) static void
FUNC3(struct tpm_sc *sc)
{

	/*
	 * Interrupts can only be cleared when a locality is active.
	 * Clear them now in case interrupt handler didn't make it in time.
	 */
	if(sc->interrupts)
		FUNC0(sc, TPM_INT_STS, FUNC2(sc, TPM_INT_STS));

	FUNC1(sc, TPM_ACCESS, TPM_ACCESS_LOC_RELINQUISH);
}