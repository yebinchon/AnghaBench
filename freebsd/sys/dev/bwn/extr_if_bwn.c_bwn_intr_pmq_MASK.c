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
typedef  int uint32_t ;
struct bwn_mac {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_PS_STATUS ; 
 int FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct bwn_mac *mac)
{
	uint32_t tmp;

	while (1) {
		tmp = FUNC0(mac, BWN_PS_STATUS);
		if (!(tmp & 0x00000008))
			break;
	}
	FUNC1(mac, BWN_PS_STATUS, 0x0002);
}