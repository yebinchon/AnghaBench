#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_15__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  ifq_mtx; } ;
struct TYPE_19__ {int /*<<< orphan*/  ifq_mtx; } ;
struct TYPE_21__ {int /*<<< orphan*/  dmamem; int /*<<< orphan*/  timeout_handle; TYPE_10__* chan; int /*<<< orphan*/  devt; TYPE_1__ hi_queue; TYPE_15__ queue; int /*<<< orphan*/ * node; int /*<<< orphan*/  ifp; scalar_t__ running; } ;
typedef  TYPE_2__ drv_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_22__ {int num; scalar_t__ sys; } ;
typedef  TYPE_3__ cp_chan_t ;
struct TYPE_23__ {size_t num; TYPE_3__* chan; int /*<<< orphan*/ * sys; } ;
typedef  TYPE_4__ cp_board_t ;
struct TYPE_24__ {int /*<<< orphan*/  cp_mtx; int /*<<< orphan*/  dmamem; int /*<<< orphan*/  cp_res; int /*<<< orphan*/  cp_irq; int /*<<< orphan*/  cp_intrhand; TYPE_4__* board; } ;
typedef  TYPE_5__ bdrv_t ;
struct TYPE_18__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC2 (TYPE_15__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int NCHAN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ ** adapter ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** channel ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int cp_destroy ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * led_timo ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC30 (device_t dev)
{
	bdrv_t *bd = FUNC20 (dev);
	cp_board_t *b = bd->board;
	cp_chan_t *c;
	int s;

	FUNC3 (FUNC25 (&bd->cp_mtx), ("cp mutex not initialized"));
	s = FUNC27 ();
	FUNC0 (bd);
	/* Check if the device is busy (open). */
	for (c = b->chan; c < b->chan + NCHAN; ++c) {
		drv_t *d = (drv_t*) c->sys;

		if (! d || ! d->chan->type)
			continue;
		if (d->running) {
			FUNC1 (bd);
			FUNC28 (s);
			return EBUSY;
		}
	}

	/* Ok, we can unload driver */
	/* At first we should stop all channels */
	for (c = b->chan; c < b->chan + NCHAN; ++c) {
		drv_t *d = (drv_t*) c->sys;

		if (! d || ! d->chan->type)
			continue;

		FUNC17 (c);
		FUNC18 (c);
		FUNC15 (d->chan, 0);
		FUNC16 (d->chan, 0);
	}

	/* Reset the adapter. */
	cp_destroy = 1;
	FUNC12 (b, 1);
	FUNC13 (b);
	FUNC14 (b, 0 ,0);
	FUNC10 (&led_timo[b->num]);

	/* Disable the interrupt request. */
	FUNC8 (dev, bd->cp_irq, bd->cp_intrhand);

	for (c=b->chan; c<b->chan+NCHAN; ++c) {
		drv_t *d = (drv_t*) c->sys;

		if (! d || ! d->chan->type)
			continue;
		FUNC10 (&d->timeout_handle);
#ifndef NETGRAPH
		/* Detach from the packet filter list of interfaces. */
		FUNC6 (d->ifp);

		/* Detach from the sync PPP list. */
		FUNC29 (d->ifp);

		/* Detach from the system list of interfaces. */
		FUNC22 (d->ifp);
		FUNC23 (d->ifp);
		FUNC2 (&d->queue);
		FUNC24 (&d->queue.ifq_mtx);
#else
		if (d->node) {
			ng_rmnode_self (d->node);
			NG_NODE_UNREF (d->node);
			d->node = NULL;
		}
		mtx_destroy (&d->queue.ifq_mtx);
		mtx_destroy (&d->hi_queue.ifq_mtx);
#endif
		FUNC19 (d->devt);
	}

	b->sys = NULL;
	FUNC1 (bd);

	FUNC7 (dev, SYS_RES_IRQ, 0, bd->cp_irq);
	FUNC7 (dev, SYS_RES_MEMORY, FUNC5(0), bd->cp_res);

	FUNC0 (bd);
	FUNC13 (b);
	FUNC1 (bd);
	FUNC9 (&led_timo[b->num]);
	FUNC28 (s);

	for (c = b->chan; c < b->chan + NCHAN; ++c) {
		drv_t *d = (drv_t*) c->sys;

		if (! d || ! d->chan->type)
			continue;
		FUNC9 (&d->timeout_handle);
		channel [b->num*NCHAN + c->num] = NULL;
		/* Deallocate buffers. */
		FUNC11 (&d->dmamem);
	}
	adapter [b->num] = NULL;
	FUNC11 (&bd->dmamem);
	FUNC21 (b, M_DEVBUF);
	FUNC24 (&bd->cp_mtx);
	return 0;
}