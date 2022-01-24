#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int bcr0; int bcr0b; scalar_t__ port; TYPE_1__* chan; } ;
typedef  TYPE_2__ cx_board_t ;
struct TYPE_4__ {scalar_t__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int BCR0_IRQ_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2 (cx_board_t *b)
{
	FUNC1 (FUNC0(b->port), b->bcr0 & ~BCR0_IRQ_MASK);
	if (b->chan[8].port || b->chan[12].port)
		FUNC1 (FUNC0(b->port+0x10), b->bcr0b & ~BCR0_IRQ_MASK);
}