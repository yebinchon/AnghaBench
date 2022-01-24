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
 int /*<<< orphan*/  CCR_DISRX ; 
 int /*<<< orphan*/  CCR_ENRX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned char IER_RET ; 
 unsigned char IER_RXD ; 
 scalar_t__ M_ASYNC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 unsigned char FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char) ; 

void FUNC6 (cx_chan_t *c, int on)
{
	unsigned char ier;

	if (FUNC3(c) && ! on) {
		FUNC5 (FUNC0(c->port), c->num & 3);
		if (c->mode == M_ASYNC) {
			ier = FUNC4 (FUNC1(c->port));
			FUNC5 (FUNC1(c->port), ier & ~ (IER_RXD | IER_RET));
		}
		FUNC2 (c->port, CCR_DISRX);
	} else if (! FUNC3(c) && on) {
		FUNC5 (FUNC0(c->port), c->num & 3);
		ier = FUNC4 (FUNC1(c->port));
		if (c->mode == M_ASYNC)
			FUNC5 (FUNC1(c->port), ier | (IER_RXD | IER_RET));
		else
			FUNC5 (FUNC1(c->port), ier | IER_RXD);
 		FUNC2 (c->port, CCR_ENRX);
	}
}