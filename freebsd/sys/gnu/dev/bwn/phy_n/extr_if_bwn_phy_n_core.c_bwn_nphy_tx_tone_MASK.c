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
typedef  scalar_t__ uint16_t ;
struct bwn_mac {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,scalar_t__,int,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC2(struct bwn_mac *mac, uint32_t freq, uint16_t max_val,
			    bool iqmode, bool dac_test, bool modify_bbmult)
{
	uint16_t samp = FUNC0(mac, freq, max_val, dac_test);
	if (samp == 0)
		return -1;
	FUNC1(mac, samp, 0xFFFF, 0, iqmode, dac_test,
			     modify_bbmult);
	return 0;
}