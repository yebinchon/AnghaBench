#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  TYPE_2__* vm_map_t ;
typedef  TYPE_3__* vm_map_entry_t ;
struct TYPE_7__ {int /*<<< orphan*/  vm_object; } ;
struct TYPE_9__ {scalar_t__ wired_count; int eflags; int /*<<< orphan*/  offset; TYPE_1__ object; scalar_t__ end; scalar_t__ start; } ;
struct TYPE_8__ {int /*<<< orphan*/  pmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MAP_ENTRY_USER_WIRED ; 
 int /*<<< orphan*/  PQ_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(vm_map_t map, vm_map_entry_t entry)
{
	vm_size_t size;

	FUNC1(map);
	FUNC0(entry->wired_count > 0,
	    ("vm_map_entry_unwire: entry %p isn't wired", entry));

	size = entry->end - entry->start;
	if ((entry->eflags & MAP_ENTRY_USER_WIRED) != 0)
		FUNC4(FUNC2(size));
	FUNC3(map->pmap, entry->start, entry->end);
	FUNC5(entry->object.vm_object, entry->offset, size,
	    PQ_ACTIVE);
	entry->wired_count = 0;
}