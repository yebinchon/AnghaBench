#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_13__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  ifq_mtx; } ;
struct TYPE_18__ {int /*<<< orphan*/  ifq_mtx; } ;
struct TYPE_17__ {int /*<<< orphan*/  ifq_mtx; } ;
struct TYPE_20__ {int open_dev; int /*<<< orphan*/  dmamem; TYPE_3__* chan; int /*<<< orphan*/  timeout_handle; int /*<<< orphan*/  dcd_timeout_handle; int /*<<< orphan*/  devt; TYPE_13__ queue; int /*<<< orphan*/  ifp; TYPE_2__ hi_queue; TYPE_1__ lo_queue; int /*<<< orphan*/ * node; TYPE_8__* tty; scalar_t__ running; scalar_t__ lock; } ;
typedef  TYPE_4__ drv_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_21__ {scalar_t__ mode; TYPE_4__* sys; } ;
typedef  TYPE_5__ cx_chan_t ;
struct TYPE_22__ {size_t num; TYPE_5__* chan; } ;
typedef  TYPE_6__ cx_board_t ;
struct TYPE_23__ {int /*<<< orphan*/  cx_mtx; TYPE_6__* board; int /*<<< orphan*/  base_res; int /*<<< orphan*/  base_rid; int /*<<< orphan*/  drq_res; int /*<<< orphan*/  drq_rid; int /*<<< orphan*/  irq_res; int /*<<< orphan*/  irq_rid; int /*<<< orphan*/  intrhand; } ;
typedef  TYPE_7__ bdrv_t ;
struct TYPE_24__ {int t_state; } ;
struct TYPE_19__ {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC2 (TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ M_ASYNC ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int NCHAN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SYS_RES_DRQ ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int TS_ISOPEN ; 
 scalar_t__ T_NONE ; 
 int /*<<< orphan*/ ** adapter ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * led_timo ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_8__*) ; 

__attribute__((used)) static int FUNC25 (device_t dev)
{
	bdrv_t *bd = FUNC14 (dev);
	cx_board_t *b = bd->board;
	cx_chan_t *c;
	int s;
	
	FUNC3 (FUNC19 (&bd->cx_mtx), ("cx mutex not initialized"));

	s = FUNC21 ();
	FUNC0 (bd);
	/* Check if the device is busy (open). */
	for (c = b->chan; c < b->chan + NCHAN; ++c) {
		drv_t *d = (drv_t*) c->sys;

		if (!d || d->chan->type == T_NONE)
			continue;
		if (d->lock) {
			FUNC1 (bd);
			FUNC22 (s);
			return EBUSY;
		}
		if (c->mode == M_ASYNC && d->tty && (d->tty->t_state & TS_ISOPEN) &&
		    (d->open_dev|0x2)) {
			FUNC1 (bd);
			FUNC22 (s);
			return EBUSY;
		}
		if (d->running) {
			FUNC1 (bd);
			FUNC22 (s);
			return EBUSY;
		}
	}

	/* Deactivate the timeout routine. And soft interrupt*/
	FUNC9 (&led_timo[b->num]);

	for (c = b->chan; c < b->chan + NCHAN; ++c) {
		drv_t *d = c->sys;

		if (!d || d->chan->type == T_NONE)
			continue;

		FUNC9 (&d->dcd_timeout_handle);
	}
	FUNC1 (bd);
	FUNC7 (dev, bd->irq_res, bd->intrhand);
	FUNC6 (dev, SYS_RES_IRQ, bd->irq_rid, bd->irq_res);
	
	FUNC6 (dev, SYS_RES_DRQ, bd->drq_rid, bd->drq_res);
	
	FUNC6 (dev, SYS_RES_IOPORT, bd->base_rid, bd->base_res);

	FUNC0 (bd);
	FUNC11 (b);

	/* Detach the interfaces, free buffer memory. */
	for (c = b->chan; c < b->chan + NCHAN; ++c) {
		drv_t *d = (drv_t*) c->sys;

		if (!d || d->chan->type == T_NONE)
			continue;
			
		if (d->tty) {
			FUNC24 (d->tty);
			d->tty = NULL;
		}

		FUNC9 (&d->timeout_handle);
#ifdef NETGRAPH
		if (d->node) {
			ng_rmnode_self (d->node);
			NG_NODE_UNREF (d->node);
			d->node = NULL;
		}
		mtx_destroy (&d->lo_queue.ifq_mtx);
		mtx_destroy (&d->hi_queue.ifq_mtx);
#else
		/* Detach from the packet filter list of interfaces. */
		FUNC5 (d->ifp);
		/* Detach from the sync PPP list. */
		FUNC23 (d->ifp);

		FUNC16 (d->ifp);
		FUNC17(d->ifp);
		/* XXXRIK: check interconnection with irq handler */
		FUNC2 (&d->queue);
		FUNC18 (&d->queue.ifq_mtx);
#endif		
		FUNC13 (d->devt);
	}

	FUNC12 (b);
	FUNC1 (bd);
	FUNC8 (&led_timo[b->num]);
	for (c = b->chan; c < b->chan + NCHAN; ++c) {
		drv_t *d = c->sys;

		if (!d || d->chan->type == T_NONE)
			continue;

		FUNC8 (&d->dcd_timeout_handle);
		FUNC8 (&d->timeout_handle);
	}
	FUNC22 (s);
	
	s = FUNC21 ();
	for (c = b->chan; c < b->chan + NCHAN; ++c) {
		drv_t *d = (drv_t*) c->sys;

		if (!d || d->chan->type == T_NONE)
			continue;
		
		/* Deallocate buffers. */
		FUNC10 (&d->dmamem);
	}
	bd->board = NULL;
	adapter [b->num] = NULL;
	FUNC15 (b, M_DEVBUF);
	FUNC22 (s);

	FUNC18 (&bd->cx_mtx);
	
	return 0;	
}