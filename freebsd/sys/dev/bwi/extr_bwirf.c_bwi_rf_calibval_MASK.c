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
struct bwi_mac {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWI_RFR_BBP_ATTEN ; 
 int BWI_RFR_BBP_ATTEN_CALIB_BIT ; 
 int /*<<< orphan*/  BWI_RFR_BBP_ATTEN_CALIB_IDX ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct bwi_mac*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int const*) ; 

__attribute__((used)) static uint16_t
FUNC4(struct bwi_mac *mac)
{
	/* http://bcm-specs.sipsolutions.net/RCCTable */
	static const uint16_t rf_calibvals[] = {
		0x2, 0x3, 0x1, 0xf, 0x6, 0x7, 0x5, 0xf,
		0xa, 0xb, 0x9, 0xf, 0xe, 0xf, 0xd, 0xf
	};
	uint16_t val, calib;
	int idx;

	val = FUNC1(mac, BWI_RFR_BBP_ATTEN);
	idx = FUNC2(val, BWI_RFR_BBP_ATTEN_CALIB_IDX);
	FUNC0(idx < (int)FUNC3(rf_calibvals), ("idx %d", idx));

	calib = rf_calibvals[idx] << 1;
	if (val & BWI_RFR_BBP_ATTEN_CALIB_BIT)
		calib |= 0x1;
	calib |= 0x20;

	return calib;
}