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

/* Variables and functions */
 scalar_t__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PTE_G ; 
 int /*<<< orphan*/  cmap1_addr ; 
 int /*<<< orphan*/  cmap1_ptep ; 
 int /*<<< orphan*/  cmap2_addr ; 
 int /*<<< orphan*/  cmap2_ptep ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static __inline void
FUNC3(void)
{
	 *FUNC0(cmap1_ptep) = PTE_G;
	FUNC2(kernel_pmap, FUNC0(cmap1_addr));
	if (*FUNC0(cmap2_ptep) != PTE_G) {
		*FUNC0(cmap2_ptep) = PTE_G;
		FUNC2(kernel_pmap, FUNC0(cmap2_addr));
 	}
	FUNC1();
}