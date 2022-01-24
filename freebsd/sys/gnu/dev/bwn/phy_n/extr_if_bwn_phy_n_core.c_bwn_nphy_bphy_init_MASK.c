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
struct bwn_mac {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct bwn_mac *mac)
{
	unsigned int i;
	uint16_t val;

	val = 0x1E1F;
	for (i = 0; i < 16; i++) {
		FUNC1(mac, FUNC0(0x88 + i), val);
		val -= 0x202;
	}
	val = 0x3E3F;
	for (i = 0; i < 16; i++) {
		FUNC1(mac, FUNC0(0x98 + i), val);
		val -= 0x202;
	}
	FUNC1(mac, FUNC0(0x38), 0x668);
}