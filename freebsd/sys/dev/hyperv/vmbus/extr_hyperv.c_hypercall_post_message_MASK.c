#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  hc_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  HYPERCALL_POST_MESSAGE ; 
 TYPE_1__ hypercall_context ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint64_t
FUNC1(bus_addr_t msg_paddr)
{
	return FUNC0(hypercall_context.hc_addr,
	    HYPERCALL_POST_MESSAGE, msg_paddr, 0);
}