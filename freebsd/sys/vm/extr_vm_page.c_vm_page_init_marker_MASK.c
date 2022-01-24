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
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int queue; int /*<<< orphan*/  busy_lock; int /*<<< orphan*/  aflags; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PG_MARKER ; 
 int /*<<< orphan*/  VPB_SINGLE_EXCLUSIVER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC1(vm_page_t marker, int queue, uint8_t aflags)
{

	FUNC0(marker, sizeof(*marker));
	marker->flags = PG_MARKER;
	marker->aflags = aflags;
	marker->busy_lock = VPB_SINGLE_EXCLUSIVER;
	marker->queue = queue;
}