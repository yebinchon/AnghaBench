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
typedef  int uint64_t ;
struct nicvf {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct nicvf*,int,int) ; 

__attribute__((used)) static int FUNC3(struct nicvf *nic, int qidx,
			  uint64_t reg, int bit_pos, int bits, int val)
{
	uint64_t bit_mask;
	uint64_t reg_val;
	int timeout = 10;

	bit_mask = (1UL << bits) - 1;
	bit_mask = (bit_mask << bit_pos);

	while (timeout) {
		reg_val = FUNC2(nic, reg, qidx);
		if (((reg_val & bit_mask) >> bit_pos) == val)
			return (0);

		FUNC0(1000);
		timeout--;
	}
	FUNC1(nic->dev, "Poll on reg 0x%lx failed\n", reg);
	return (ETIMEDOUT);
}