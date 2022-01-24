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
 int FUNC0 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

int
FUNC2(struct bwn_mac *mac, uint16_t offset, uint16_t mask,
    uint16_t value, int delay, int timeout)
{
	uint16_t val;
	int i;

	for (i = 0; i < timeout; i += delay) {
		val = FUNC0(mac, offset);
		if ((val & mask) == value)
			return (1);
		FUNC1(delay);
	}
	return (0);
}