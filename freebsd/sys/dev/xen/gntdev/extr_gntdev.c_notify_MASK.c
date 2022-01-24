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
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  scalar_t__ uint8_t ;
typedef  size_t uint64_t ;
struct notify_data {int action; size_t index; int /*<<< orphan*/  notify_evtchn_handle; } ;

/* Variables and functions */
 size_t PAGE_MASK ; 
 int UNMAP_NOTIFY_CLEAR_BYTE ; 
 int UNMAP_NOTIFY_SEND_EVENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct notify_data *notify, vm_page_t page)
{
	if (notify->action & UNMAP_NOTIFY_CLEAR_BYTE) {
		uint8_t *mem;
		uint64_t offset;

		offset = notify->index & PAGE_MASK;
		mem = (uint8_t *)FUNC0(page);
		mem[offset] = 0;
		FUNC1((vm_offset_t)mem);
	}
	if (notify->action & UNMAP_NOTIFY_SEND_EVENT) {
		FUNC2(notify->notify_evtchn_handle);
		FUNC3(&notify->notify_evtchn_handle);
	}
	notify->action = 0;
}