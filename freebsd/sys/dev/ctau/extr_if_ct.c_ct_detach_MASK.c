#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_11__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  ifq_mtx; } ;
struct TYPE_15__ {int /*<<< orphan*/  ifq_mtx; } ;
struct TYPE_17__ {int /*<<< orphan*/  dmamem; int /*<<< orphan*/  timeout_handle; TYPE_2__* chan; int /*<<< orphan*/  devt; TYPE_11__ queue; int /*<<< orphan*/  ifp; TYPE_1__ hi_queue; int /*<<< orphan*/ * node; scalar_t__ running; } ;
typedef  TYPE_3__ drv_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_18__ {scalar_t__ sys; } ;
typedef  TYPE_4__ ct_chan_t ;
struct TYPE_19__ {size_t num; TYPE_4__* chan; } ;
typedef  TYPE_5__ ct_board_t ;
struct TYPE_20__ {int /*<<< orphan*/  ct_mtx; TYPE_5__* board; int /*<<< orphan*/  base_res; int /*<<< orphan*/  base_rid; int /*<<< orphan*/  drq_res; int /*<<< orphan*/  drq_rid; int /*<<< orphan*/  irq_res; int /*<<< orphan*/  irq_rid; int /*<<< orphan*/  intrhand; } ;
typedef  TYPE_6__ bdrv_t ;
struct TYPE_16__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC2 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int NCHAN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SYS_RES_DRQ ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/ ** adapter ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * led_timo ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC24 (device_t dev)
{
	bdrv_t *bd = FUNC14 (dev);
	ct_board_t *b = bd->board;
	ct_chan_t *c;
	int s;
	
	FUNC3 (FUNC19 (&bd->ct_mtx), ("ct mutex not initialized"));

	s = FUNC21 ();
	FUNC0 (bd);
	/* Check if the device is busy (open). */
	for (c = b->chan; c < b->chan + NCHAN; ++c) {
		drv_t *d = (drv_t*) c->sys;

		if (!d || !d->chan->type)
			continue;

		if (d->running) {
			FUNC1 (bd);
			FUNC22 (s);
			return EBUSY;
		}
	}

	/* Deactivate the timeout routine. */
	FUNC9 (&led_timo[b->num]);

	FUNC1 (bd);
	
	FUNC7 (dev, bd->irq_res, bd->intrhand);
	FUNC6 (dev, SYS_RES_IRQ, bd->irq_rid, bd->irq_res);
	
	FUNC6 (dev, SYS_RES_DRQ, bd->drq_rid, bd->drq_res);
	
	FUNC6 (dev, SYS_RES_IOPORT, bd->base_rid, bd->base_res);

	FUNC0 (bd);
	FUNC11 (b);
	FUNC1 (bd);

	/* Detach the interfaces, free buffer memory. */
	for (c = b->chan; c < b->chan + NCHAN; ++c) {
		drv_t *d = (drv_t*) c->sys;

		if (!d || !d->chan->type)
			continue;

		FUNC9 (&d->timeout_handle);
#ifdef NETGRAPH
		if (d->node) {
			ng_rmnode_self (d->node);
			NG_NODE_UNREF (d->node);
			d->node = NULL;
		}
		mtx_destroy (&d->queue.ifq_mtx);
		mtx_destroy (&d->hi_queue.ifq_mtx);
#else
		/* Detach from the packet filter list of interfaces. */
		FUNC5 (d->ifp);

		/* Detach from the sync PPP list. */
		FUNC23 (d->ifp);

		FUNC16 (d->ifp);
		FUNC17 (d->ifp);
		FUNC2 (&d->queue);
		FUNC18 (&d->queue.ifq_mtx);
#endif		
		FUNC13 (d->devt);
	}

	FUNC0 (bd);
	FUNC12 (b);
	FUNC1 (bd);
	FUNC8 (&led_timo[b->num]);
	FUNC22 (s);
	
	for (c = b->chan; c < b->chan + NCHAN; ++c) {
		drv_t *d = (drv_t*) c->sys;

		if (!d || !d->chan->type)
			continue;
		FUNC8(&d->timeout_handle);
		
		/* Deallocate buffers. */
		FUNC10 (&d->dmamem);
	}
	bd->board = NULL;
	adapter [b->num] = NULL;
	FUNC15 (b, M_DEVBUF);
	
	FUNC18 (&bd->ct_mtx);

	return 0;	
}