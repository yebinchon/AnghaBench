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
struct TYPE_5__ {int dtr; TYPE_1__* board; scalar_t__ num; } ;
typedef  TYPE_2__ ct_chan_t ;
struct TYPE_4__ {int /*<<< orphan*/  bcr1; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BCR1_DTR0 ; 
 int /*<<< orphan*/  BCR1_DTR1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2 (ct_chan_t *c, int on)
{
	if (on) {
		c->dtr = 1;
		c->board->bcr1 |= c->num ? BCR1_DTR1 : BCR1_DTR0;
	} else {
		c->dtr = 0;
		c->board->bcr1 &= ~(c->num ? BCR1_DTR1 : BCR1_DTR0);
	}
	FUNC1 (FUNC0(c->board->port), c->board->bcr1);
}