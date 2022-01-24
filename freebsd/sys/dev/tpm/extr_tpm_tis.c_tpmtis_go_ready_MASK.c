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
typedef  int /*<<< orphan*/  uint32_t ;
struct tpm_sc {int /*<<< orphan*/  mem_res; int /*<<< orphan*/  intr_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tpm_sc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUS_SPACE_BARRIER_WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct tpm_sc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TPM_INT_STS_CMD_RDY ; 
 int /*<<< orphan*/  TPM_STS ; 
 int /*<<< orphan*/  TPM_STS_CMD_RDY ; 
 int /*<<< orphan*/  TPM_TIMEOUT_B ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tpm_sc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4(struct tpm_sc *sc)
{
	uint32_t mask;

	mask = TPM_STS_CMD_RDY;
	sc->intr_type = TPM_INT_STS_CMD_RDY;

	FUNC1(sc, TPM_STS, TPM_STS_CMD_RDY);
	FUNC2(sc->mem_res, TPM_STS, 4, BUS_SPACE_BARRIER_WRITE);
	if (!FUNC3(sc, TPM_STS, mask, mask, TPM_TIMEOUT_B))
		return (false);

	FUNC0(sc, TPM_STS, ~TPM_STS_CMD_RDY);
	return (true);
}