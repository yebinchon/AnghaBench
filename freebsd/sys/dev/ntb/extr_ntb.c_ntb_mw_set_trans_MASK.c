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
struct ntb_child {unsigned int mwoff; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,size_t) ; 
 struct ntb_child* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(device_t ntb, unsigned mw_idx, bus_addr_t addr, size_t size)
{
	struct ntb_child *nc = FUNC1(ntb);

	return (FUNC0(FUNC2(ntb), mw_idx + nc->mwoff,
	    addr, size));
}