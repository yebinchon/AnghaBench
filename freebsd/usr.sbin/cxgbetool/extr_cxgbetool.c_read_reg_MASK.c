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
typedef  void* uint32_t ;
struct t4_reg {long long val; void* size; void* addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHELSIO_T4_GETREG ; 
 int FUNC0 (int /*<<< orphan*/ ,struct t4_reg*) ; 

__attribute__((used)) static int
FUNC1(long addr, int size, long long *val)
{
	struct t4_reg reg;
	int rc;

	reg.addr = (uint32_t) addr;
	reg.size = (uint32_t) size;
	reg.val = 0;

	rc = FUNC0(CHELSIO_T4_GETREG, &reg);

	*val = reg.val;

	return (rc);
}