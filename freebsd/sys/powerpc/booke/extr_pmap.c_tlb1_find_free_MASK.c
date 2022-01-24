#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int mas1; } ;
typedef  TYPE_1__ tlb_entry_t ;

/* Variables and functions */
 int MAS1_VALID ; 
 int TLB1_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 

__attribute__((used)) static uint32_t
FUNC1(void)
{
	tlb_entry_t e;
	int i;

	for (i = 0; i < TLB1_ENTRIES; i++) {
		FUNC0(&e, i);
		if ((e.mas1 & MAS1_VALID) == 0)
			return (i);
	}
	return (-1);
}