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
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  platform_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int,scalar_t__,int,scalar_t__*,scalar_t__*) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static vm_offset_t
FUNC4(platform_t plat)
{
	uint64_t lpar_id, junk, ppe_id;
	static uint64_t rm_maxaddr = 0;

	if (rm_maxaddr == 0) {
		/* Get real mode memory region */
		FUNC0(&lpar_id);
		FUNC1(&ppe_id);

		FUNC2(lpar_id,
		    FUNC3("bi") >> 32,
		    FUNC3("pu"),
		    ppe_id, FUNC3("rm_size"),
		    &rm_maxaddr, &junk);
	}
	
	return (rm_maxaddr);
}