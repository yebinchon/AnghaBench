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
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  register_t ;

/* Variables and functions */
 int /*<<< orphan*/  ASI_DTLB_DATA_ACCESS_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u_long
FUNC4(u_int tlb, u_int slot)
{
	u_long data;
	register_t s;

	slot = FUNC0(tlb, slot);
	/*
	 * We read ASI_DTLB_DATA_ACCESS_REG twice back-to-back in order to
	 * work around errata of USIII and beyond.
	 */
	s = FUNC1();
	(void)FUNC3(slot, ASI_DTLB_DATA_ACCESS_REG);
	data = FUNC3(slot, ASI_DTLB_DATA_ACCESS_REG);
	FUNC2(s);
	return (data);
}