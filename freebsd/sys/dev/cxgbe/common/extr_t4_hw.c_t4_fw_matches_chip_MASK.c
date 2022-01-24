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
struct fw_hdr {scalar_t__ chip; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FW_HDR_CHIP_T4 ; 
 scalar_t__ FW_HDR_CHIP_T5 ; 
 scalar_t__ FW_HDR_CHIP_T6 ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 scalar_t__ FUNC2 (struct adapter*) ; 
 scalar_t__ FUNC3 (struct adapter*) ; 
 scalar_t__ FUNC4 (struct adapter*) ; 

__attribute__((used)) static int FUNC5(struct adapter *adap,
			      const struct fw_hdr *hdr)
{
	/*
	 * The expression below will return FALSE for any unsupported adapter
	 * which will keep us "honest" in the future ...
	 */
	if ((FUNC2(adap) && hdr->chip == FW_HDR_CHIP_T4) ||
	    (FUNC3(adap) && hdr->chip == FW_HDR_CHIP_T5) ||
	    (FUNC4(adap) && hdr->chip == FW_HDR_CHIP_T6))
		return 1;

	FUNC0(adap,
		"FW image (%d) is not suitable for this adapter (%d)\n",
		hdr->chip, FUNC1(adap));
	return 0;
}