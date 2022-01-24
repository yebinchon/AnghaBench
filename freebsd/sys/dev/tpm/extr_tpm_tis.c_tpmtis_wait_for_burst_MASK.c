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
struct tpm_sc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct tpm_sc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TPM_STS ; 
 int TPM_STS_BURST_MASK ; 
 int TPM_STS_BURST_OFFSET ; 
 int TPM_TIMEOUT_A ; 

__attribute__((used)) static uint16_t
FUNC2(struct tpm_sc *sc)
{
	int timeout;
	uint16_t burst_count;

	timeout = TPM_TIMEOUT_A;

	while (timeout-- > 0) {
		burst_count = (FUNC1(sc, TPM_STS) & TPM_STS_BURST_MASK) >>
		    TPM_STS_BURST_OFFSET;
		if (burst_count > 0)
			break;

		FUNC0(1);
	}
	return (burst_count);
}