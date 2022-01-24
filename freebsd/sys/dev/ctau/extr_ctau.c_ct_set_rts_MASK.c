#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int rts; int /*<<< orphan*/  CTL; } ;
typedef  TYPE_1__ ct_chan_t ;

/* Variables and functions */
 int CTL_RTS_INV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2 (ct_chan_t *c, int on)
{
	c->rts = (on != 0);
	if (c->rts)
		FUNC1 (c->CTL, FUNC0 (c->CTL) & ~CTL_RTS_INV);
	else
		FUNC1 (c->CTL, FUNC0 (c->CTL) | CTL_RTS_INV);
}