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
struct TYPE_4__ {int num; scalar_t__ mode; int /*<<< orphan*/  port; } ;
typedef  TYPE_1__ cx_chan_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CCR_DISTX ; 
 int /*<<< orphan*/  CCR_ENTX ; 
 scalar_t__ M_ASYNC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int STC_ABORTTX ; 
 int STC_SNDSPC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

void FUNC5 (cx_chan_t *c, int on)
{
	if (FUNC3(c) && ! on) {
		FUNC4 (FUNC0(c->port), c->num & 3);
		if (c->mode != M_ASYNC)
			FUNC4 (FUNC1(c->port), STC_ABORTTX | STC_SNDSPC);
		FUNC2 (c->port, CCR_DISTX);
	} else if (! FUNC3(c) && on) {
		FUNC4 (FUNC0(c->port), c->num & 3);
		FUNC2 (c->port, CCR_ENTX);
	}
}