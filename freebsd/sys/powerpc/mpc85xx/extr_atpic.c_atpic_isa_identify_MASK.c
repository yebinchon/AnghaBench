#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ driver_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_6__ {int /*<<< orphan*/  ip_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATPIC_MASTER ; 
 int /*<<< orphan*/  ATPIC_SLAVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int IO_ICU1 ; 
 int IO_ICU2 ; 
 int /*<<< orphan*/  ISA_ORDER_SENSITIVE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 TYPE_4__* atpic_ids ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(driver_t *drv, device_t parent)
{
	device_t child;

	child = FUNC0(parent, ISA_ORDER_SENSITIVE, drv->name, -1);
	FUNC2(child, drv);
	FUNC3(child, atpic_ids[0].ip_id);
	FUNC4(child, atpic_ids[0].ip_id);

	FUNC1(child, SYS_RES_IOPORT, ATPIC_MASTER, IO_ICU1, 2);
	FUNC1(child, SYS_RES_IOPORT, ATPIC_SLAVE, IO_ICU2, 2);

	/* ISA interrupts are routed through external interrupt 0. */
	FUNC1(child, SYS_RES_IRQ, 0, 16, 1);
}