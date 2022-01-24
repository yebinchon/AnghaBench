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
struct futex_st0 {int /*<<< orphan*/  oparg; int /*<<< orphan*/ * oldval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(vm_offset_t kva, void *arg)
{
	struct futex_st0 *st;

	st = arg;
	*st->oldval = FUNC0((int *)kva, st->oparg);
}