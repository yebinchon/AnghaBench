#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct tty {TYPE_2__* t_sc; } ;
struct cdev {int dummy; } ;
struct TYPE_9__ {int open_dev; TYPE_3__* chan; int /*<<< orphan*/  cd; TYPE_1__* board; } ;
typedef  TYPE_2__ drv_t ;
typedef  int /*<<< orphan*/  bdrv_t ;
struct TYPE_10__ {scalar_t__ mode; } ;
struct TYPE_8__ {int /*<<< orphan*/ * sys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int EBUSY ; 
 scalar_t__ M_ASYNC ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7 (struct tty *tp, struct cdev *dev)
{
	bdrv_t *bd;
	drv_t *d;

	d = tp->t_sc;
	FUNC0 (d, ("cx_open (serial)\n"));

	bd = d->board->sys;

	if (d->chan->mode != M_ASYNC)
		return (EBUSY);

	d->open_dev |= 0x2;
	FUNC1 (bd);
	FUNC6 (d->chan, 0, 0);
	FUNC4 (d->chan, 1);
	FUNC5 (d->chan, 1);
	d->cd = FUNC3 (d->chan);
	FUNC2 (bd);

	FUNC0 (d, ("cx_open done\n"));

	return 0;
}