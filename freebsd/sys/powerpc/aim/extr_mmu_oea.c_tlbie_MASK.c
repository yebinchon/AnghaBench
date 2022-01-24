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
typedef  int /*<<< orphan*/  vm_offset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tlbie_mtx ; 

__attribute__((used)) static void
FUNC2(vm_offset_t va)
{

	FUNC0(&tlbie_mtx);
	__asm __volatile("ptesync");
	__asm __volatile("tlbie %0" :: "r"(va));
	__asm __volatile("eieio; tlbsync; ptesync");
	FUNC1(&tlbie_mtx);
}