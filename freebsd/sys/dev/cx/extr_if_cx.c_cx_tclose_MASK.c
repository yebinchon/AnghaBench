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
struct tty {TYPE_2__* t_sc; } ;
struct TYPE_5__ {int open_dev; int /*<<< orphan*/  chan; TYPE_1__* board; } ;
typedef  TYPE_2__ drv_t ;
typedef  int /*<<< orphan*/  bdrv_t ;
struct TYPE_4__ {int /*<<< orphan*/ * sys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4 (struct tty *tp)
{
	drv_t *d;
	bdrv_t *bd;

	d = tp->t_sc;
	FUNC0 (d, ("cx_close\n"));
	bd = d->board->sys;
	FUNC1 (bd);
	/* Disable receiver.
	 * Transmitter continues sending the queued data. */
	FUNC3 (d->chan, 0);
	FUNC2 (bd);
	d->open_dev &= ~0x2;
}