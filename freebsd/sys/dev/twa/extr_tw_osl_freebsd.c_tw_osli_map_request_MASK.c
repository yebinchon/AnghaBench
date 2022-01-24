#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_offset_t ;
struct twa_softc {int sg_size_factor; int /*<<< orphan*/  ctlr_handle; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  dma_tag; int /*<<< orphan*/  ioctl_map; int /*<<< orphan*/  ioctl_tag; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* tw_osl_callback ) (int /*<<< orphan*/ *) ;} ;
struct tw_osli_req_context {int length; int flags; int real_length; scalar_t__ error_code; int /*<<< orphan*/  req_handle; TYPE_1__ req_pkt; int /*<<< orphan*/  state; int /*<<< orphan*/ * real_data; int /*<<< orphan*/ * data; int /*<<< orphan*/  dma_map; int /*<<< orphan*/  orig_req; struct twa_softc* ctlr; } ;
typedef  scalar_t__ TW_INT32 ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_WAITOK ; 
 scalar_t__ EINPROGRESS ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER ; 
 int /*<<< orphan*/  TW_CL_SEVERITY_ERROR_STRING ; 
 int /*<<< orphan*/  TW_OSLI_BUSY_Q ; 
 int /*<<< orphan*/  TW_OSLI_MALLOC_CLASS ; 
 int TW_OSLI_REQ_FLAGS_CCB ; 
 int TW_OSLI_REQ_FLAGS_DATA_COPY_NEEDED ; 
 int TW_OSLI_REQ_FLAGS_FAILED ; 
 int TW_OSLI_REQ_FLAGS_IN_PROGRESS ; 
 int TW_OSLI_REQ_FLAGS_MAPPED ; 
 int TW_OSLI_REQ_FLAGS_PASSTHRU ; 
 int /*<<< orphan*/  TW_OSLI_REQ_STATE_BUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct tw_osli_req_context*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tw_osli_req_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,struct twa_softc*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct twa_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct twa_softc*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct tw_osli_req_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  twa_map_load_data_callback ; 

TW_INT32
FUNC13(struct tw_osli_req_context *req)
{
	struct twa_softc	*sc = req->ctlr;
	TW_INT32		error = 0;

	FUNC9(10, sc, "entered");

	/* If the command involves data, map that too. */
	if (req->data != NULL) {
		/*
		 * It's sufficient for the data pointer to be 4-byte aligned
		 * to work with 9000.  However, if 4-byte aligned addresses
		 * are passed to bus_dmamap_load, we can get back sg elements
		 * that are not 512-byte multiples in size.  So, we will let
		 * only those buffers that are 512-byte aligned to pass
		 * through, and bounce the rest, so as to make sure that we
		 * always get back sg elements that are 512-byte multiples
		 * in size.
		 */
		if (((vm_offset_t)req->data % sc->sg_size_factor) ||
			(req->length % sc->sg_size_factor)) {
			req->flags |= TW_OSLI_REQ_FLAGS_DATA_COPY_NEEDED;
			/* Save original data pointer and length. */
			req->real_data = req->data;
			req->real_length = req->length;
			req->length = (req->length +
				(sc->sg_size_factor - 1)) &
				~(sc->sg_size_factor - 1);
			req->data = FUNC3(req->length, TW_OSLI_MALLOC_CLASS,
					M_NOWAIT);
			if (req->data == NULL) {
				FUNC11(sc, "error = %d",
					TW_CL_SEVERITY_ERROR_STRING,
					TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
					0x201E,
					"Failed to allocate memory "
					"for bounce buffer",
					ENOMEM);
				/* Restore original data pointer and length. */
				req->data = req->real_data;
				req->length = req->real_length;
				return(ENOMEM);
			}
		}
	
		/*
		 * Map the data buffer into bus space and build the SG list.
		 */
		if (req->flags & TW_OSLI_REQ_FLAGS_PASSTHRU) {
			/* Lock against multiple simultaneous ioctl calls. */
			FUNC4(sc->io_lock);
			error = FUNC0(sc->ioctl_tag, sc->ioctl_map,
				req->data, req->length,
				twa_map_load_data_callback, req,
				BUS_DMA_WAITOK);
			FUNC5(sc->io_lock);
		} else if (req->flags & TW_OSLI_REQ_FLAGS_CCB) {
			error = FUNC1(sc->dma_tag, req->dma_map,
				req->orig_req, twa_map_load_data_callback, req,
				BUS_DMA_WAITOK);
		} else {
			/*
			 * There's only one CAM I/O thread running at a time.
			 * So, there's no need to hold the io_lock.
			 */
			error = FUNC0(sc->dma_tag, req->dma_map,
				req->data, req->length,
				twa_map_load_data_callback, req,
				BUS_DMA_WAITOK);
		}
		
		if (!error)
			error = req->error_code;
		else {
			if (error == EINPROGRESS) {
				/*
				 * Specifying sc->io_lock as the lockfuncarg
				 * in ...tag_create should protect the access
				 * of ...FLAGS_MAPPED from the callback.
				 */
				FUNC4(sc->io_lock);
				if (!(req->flags & TW_OSLI_REQ_FLAGS_MAPPED))
					req->flags |= TW_OSLI_REQ_FLAGS_IN_PROGRESS;
				FUNC10(sc, &(req->req_handle));
				FUNC5(sc->io_lock);
				error = 0;
			} else {
				FUNC11(sc, "error = %d",
					TW_CL_SEVERITY_ERROR_STRING,
					TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
					0x9999,
					"Failed to map DMA memory "
					"for I/O request",
					error);
				req->flags |= TW_OSLI_REQ_FLAGS_FAILED;
				/* Free alignment buffer if it was used. */
				if (req->flags &
					TW_OSLI_REQ_FLAGS_DATA_COPY_NEEDED) {
					FUNC2(req->data, TW_OSLI_MALLOC_CLASS);
					/*
					 * Restore original data pointer
					 * and length.
					 */
					req->data = req->real_data;
					req->length = req->real_length;
				}
			}
		}

	} else {
		/* Mark the request as currently being processed. */
		req->state = TW_OSLI_REQ_STATE_BUSY;
		/* Move the request into the busy queue. */
		FUNC12(req, TW_OSLI_BUSY_Q);
		if (req->flags & TW_OSLI_REQ_FLAGS_PASSTHRU)
			error = FUNC7(&sc->ctlr_handle,
					&(req->req_pkt), &(req->req_handle));
		else
			error = FUNC8(&sc->ctlr_handle,
					&(req->req_pkt), &(req->req_handle));
		if (error) {
			req->error_code = error;
			req->req_pkt.tw_osl_callback(&(req->req_handle));
		}
	}
	return(error);
}