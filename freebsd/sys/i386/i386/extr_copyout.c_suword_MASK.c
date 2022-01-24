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
typedef  int /*<<< orphan*/  word ;
typedef  int /*<<< orphan*/  vm_offset_t ;

/* Variables and functions */
 uintptr_t VM_MAXUSER_ADDRESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,long*) ; 
 scalar_t__ fast_copyout ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (void volatile*,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  suword_slow0 ; 

int
FUNC3(volatile void *base, long word)
{

	if ((uintptr_t)base + sizeof(word) < (uintptr_t)base ||
	    (uintptr_t)base + sizeof(word) > VM_MAXUSER_ADDRESS)
		return (-1);
	if (fast_copyout && FUNC2(base, word, FUNC1()) == 0)
		return (0);
	return (FUNC0((vm_offset_t)base, sizeof(long), true,
	    suword_slow0, &word) != 0 ? -1 : 0);
}