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
struct tws_request {scalar_t__ type; int flags; int /*<<< orphan*/  length; int /*<<< orphan*/ * data; int /*<<< orphan*/  dma_map; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int BUS_DMA_NOWAIT ; 
 int BUS_DMA_WAITOK ; 
 scalar_t__ EINPROGRESS ; 
 int TWS_DATA_CCB ; 
 scalar_t__ TWS_REQ_TYPE_SCSI_IO ; 
 int /*<<< orphan*/  FUNC0 (struct tws_softc*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tws_request*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct tws_request*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tws_dmamap_data_load_cbfn ; 
 int /*<<< orphan*/  FUNC5 (struct tws_softc*,struct tws_request*) ; 
 scalar_t__ FUNC6 (struct tws_softc*,struct tws_request*) ; 

int32_t
FUNC7(struct tws_softc *sc, struct tws_request *req)
{
    int32_t error = 0;


    /* If the command involves data, map that too. */       
    if (req->data != NULL) {
        int my_flags = ((req->type == TWS_REQ_TYPE_SCSI_IO) ? BUS_DMA_WAITOK : BUS_DMA_NOWAIT);

        /*
         * Map the data buffer into bus space and build the SG list.
         */
        FUNC3(&sc->io_lock);
	if (req->flags & TWS_DATA_CCB)
		error = FUNC2(sc->data_tag, req->dma_map,
					    req->data,
					    tws_dmamap_data_load_cbfn, req,
					    my_flags);
	else
		error = FUNC1(sc->data_tag, req->dma_map,
					req->data, req->length,
					tws_dmamap_data_load_cbfn, req,
					my_flags);
        FUNC4(&sc->io_lock);

        if (error == EINPROGRESS) {
            FUNC0(sc, "in progress", 0, error);
            FUNC5(sc, req);
            error = 0;  // EINPROGRESS is not a fatal error.
        } 
    } else { /* no data involved */
        error = FUNC6(sc, req);
    }
    return(error);
}