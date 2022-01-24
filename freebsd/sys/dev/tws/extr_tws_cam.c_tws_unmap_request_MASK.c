#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tws_softc {int /*<<< orphan*/  io_lock; int /*<<< orphan*/  data_tag; } ;
struct tws_request {int flags; int /*<<< orphan*/  dma_map; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int TWS_DIR_IN ; 
 int TWS_DIR_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void 
FUNC4(struct tws_softc *sc, struct tws_request *req)
{
    if (req->data != NULL) {
        if ( req->flags & TWS_DIR_IN )
            FUNC0(sc->data_tag, req->dma_map, 
                                            BUS_DMASYNC_POSTREAD);
        if ( req->flags & TWS_DIR_OUT )
            FUNC0(sc->data_tag, req->dma_map, 
                                            BUS_DMASYNC_POSTWRITE);
        FUNC2(&sc->io_lock);
        FUNC1(sc->data_tag, req->dma_map);
        FUNC3(&sc->io_lock);
    }
}