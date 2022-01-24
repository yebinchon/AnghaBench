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
struct pvo_entry {int dummy; } ;
typedef  int /*<<< orphan*/  mmu_t ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pvo_entry*) ; 
 int /*<<< orphan*/  mps3_table_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int64_t
FUNC3(mmu_t mmu, struct pvo_entry *pvo)
{
	int64_t retval;

	FUNC1(&mps3_table_lock);
	retval = FUNC0(pvo);
	FUNC2(&mps3_table_lock);

	return (retval);
}