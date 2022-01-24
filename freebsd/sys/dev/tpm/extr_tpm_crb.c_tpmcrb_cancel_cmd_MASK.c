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
struct tpm_sc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  TPM_CRB_CTRL_CANCEL ; 
 int TPM_CRB_CTRL_CANCEL_CMD ; 
 int /*<<< orphan*/  TPM_CRB_CTRL_START ; 
 int /*<<< orphan*/  TPM_TIMEOUT_B ; 
 int /*<<< orphan*/  FUNC0 (struct tpm_sc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct tpm_sc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(struct tpm_sc *sc)
{
	uint32_t mask = ~0;

	FUNC0(sc, TPM_CRB_CTRL_CANCEL, TPM_CRB_CTRL_CANCEL_CMD);
	if (!FUNC2(sc, TPM_CRB_CTRL_START,
		    mask, ~mask, TPM_TIMEOUT_B)) {
		FUNC1(sc->dev,
		    "Device failed to cancel command\n");
		return (false);
	}

	FUNC0(sc, TPM_CRB_CTRL_CANCEL, !TPM_CRB_CTRL_CANCEL_CMD);
	return (true);
}