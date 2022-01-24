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
struct TYPE_3__ {int rts; int num; int /*<<< orphan*/  port; } ;
typedef  TYPE_1__ cx_chan_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int MSV_RTS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

void FUNC3 (cx_chan_t *c, int on)
{
	c->rts = on ? 1 : 0;
	FUNC2 (FUNC0(c->port), c->num & 3);
	FUNC2 (FUNC1(c->port), on ? MSV_RTS : 0);
}