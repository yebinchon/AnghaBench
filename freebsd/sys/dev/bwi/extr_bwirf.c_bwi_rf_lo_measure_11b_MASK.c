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
typedef  scalar_t__ uint16_t ;
struct bwi_mac {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct bwi_mac*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_mac*,int,int) ; 

__attribute__((used)) static uint16_t
FUNC3(struct bwi_mac *mac)
{
	uint16_t val;
	int i;

	val = 0;
	for (i = 0; i < 10; ++i) {
		FUNC2(mac, 0x15, 0xafa0);
		FUNC0(1);
		FUNC2(mac, 0x15, 0xefa0);
		FUNC0(10);
		FUNC2(mac, 0x15, 0xffa0);
		FUNC0(40);

		val += FUNC1(mac, 0x2c);
	}
	return val;
}