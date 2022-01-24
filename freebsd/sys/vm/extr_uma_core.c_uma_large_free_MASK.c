#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  TYPE_1__* uma_slab_t ;
struct TYPE_4__ {int us_flags; int /*<<< orphan*/  us_size; scalar_t__ us_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  SKIP_NONE ; 
 int UMA_SLAB_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  slabzone ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC4(uma_slab_t slab)
{

	FUNC0((slab->us_flags & UMA_SLAB_KERNEL) != 0,
	    ("uma_large_free:  Memory not allocated with uma_large_malloc."));
	FUNC1((vm_offset_t)slab->us_data, slab->us_size);
	FUNC2(slab->us_size);
	FUNC3(slabzone, slab, NULL, SKIP_NONE);
}