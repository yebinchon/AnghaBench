#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
struct TYPE_5__ {scalar_t__ queue; int aflags; scalar_t__ ref_count; scalar_t__ dirty; scalar_t__ valid; int /*<<< orphan*/ * object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PGA_QUEUE_STATE_MASK ; 
 scalar_t__ PQ_NONE ; 
 scalar_t__ VM_MEMATTR_DEFAULT ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3(vm_page_t m)
{

	FUNC0(m->object == NULL, ("page %p has object", m));
	FUNC0(m->queue == PQ_NONE && (m->aflags & PGA_QUEUE_STATE_MASK) == 0,
	    ("page %p has unexpected queue %d, flags %#x",
	    m, m->queue, (m->aflags & PGA_QUEUE_STATE_MASK)));
	FUNC0(m->ref_count == 0, ("page %p has references", m));
	FUNC0(!FUNC2(m), ("page %p is busy", m));
	FUNC0(m->dirty == 0, ("page %p is dirty", m));
	FUNC0(FUNC1(m) == VM_MEMATTR_DEFAULT,
	    ("page %p has unexpected memattr %d",
	    m, FUNC1(m)));
	FUNC0(m->valid == 0, ("free page %p is valid", m));
}