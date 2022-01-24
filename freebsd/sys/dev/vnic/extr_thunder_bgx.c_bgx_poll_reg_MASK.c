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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
struct bgx {int dummy; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETIMEDOUT ; 
 int FUNC1 (struct bgx*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct bgx *bgx, uint8_t lmac, uint64_t reg, uint64_t mask,
    boolean_t zero)
{
	int timeout = 10;
	uint64_t reg_val;

	while (timeout) {
		reg_val = FUNC1(bgx, lmac, reg);
		if (zero && !(reg_val & mask))
			return (0);
		if (!zero && (reg_val & mask))
			return (0);

		FUNC0(100);
		timeout--;
	}
	return (ETIMEDOUT);
}