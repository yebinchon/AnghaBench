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
typedef  int u_int8_t ;
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  TPM_ACCESS ; 
 int TPM_ACCESS_ACTIVE_LOCALITY ; 
 int TPM_ACCESS_REQUEST_USE ; 
 int TPM_ACCESS_VALID ; 
 int /*<<< orphan*/  TPM_CAPBITS ; 
 int TPM_CAPSREQ ; 
 int /*<<< orphan*/  TPM_ID ; 
 int /*<<< orphan*/  TPM_INTF_CAPABILITIES ; 
 int TPM_INTF_INT_EDGE_RISING ; 
 int TPM_INTF_INT_LEVEL_LOW ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 

int
FUNC4(bus_space_tag_t bt, bus_space_handle_t bh)
{
	u_int32_t r;
	u_int8_t save, reg;

	r = FUNC1(bt, bh, TPM_INTF_CAPABILITIES);
	if (r == 0xffffffff)
		return 0;

#ifdef TPM_DEBUG
	printf("tpm: caps=%b\n", r, TPM_CAPBITS);
#endif
	if ((r & TPM_CAPSREQ) != TPM_CAPSREQ ||
	    !(r & (TPM_INTF_INT_EDGE_RISING | TPM_INTF_INT_LEVEL_LOW))) {
#ifdef TPM_DEBUG
		printf("tpm: caps too low (caps=%b)\n", r, TPM_CAPBITS);
#endif
		return 0;
	}

	save = FUNC0(bt, bh, TPM_ACCESS);
	FUNC2(bt, bh, TPM_ACCESS, TPM_ACCESS_REQUEST_USE);
	reg = FUNC0(bt, bh, TPM_ACCESS);
	if ((reg & TPM_ACCESS_VALID) && (reg & TPM_ACCESS_ACTIVE_LOCALITY) &&
	    FUNC1(bt, bh, TPM_ID) != 0xffffffff)
		return 1;

	FUNC2(bt, bh, TPM_ACCESS, save);
	return 0;
}