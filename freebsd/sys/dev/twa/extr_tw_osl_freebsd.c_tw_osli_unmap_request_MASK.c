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
struct twa_softc {int /*<<< orphan*/  dma_tag; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  ioctl_map; int /*<<< orphan*/  ioctl_tag; } ;
struct tw_osli_req_context {int flags; int /*<<< orphan*/  real_length; int /*<<< orphan*/  length; int /*<<< orphan*/ * real_data; int /*<<< orphan*/ * data; int /*<<< orphan*/  dma_map; struct twa_softc* ctlr; } ;
typedef  int /*<<< orphan*/  TW_VOID ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  TW_OSLI_MALLOC_CLASS ; 
 int TW_OSLI_REQ_FLAGS_DATA_COPY_NEEDED ; 
 int TW_OSLI_REQ_FLAGS_DATA_IN ; 
 int TW_OSLI_REQ_FLAGS_DATA_OUT ; 
 int TW_OSLI_REQ_FLAGS_PASSTHRU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,struct twa_softc*,char*) ; 

TW_VOID
FUNC7(struct tw_osli_req_context *req)
{
	struct twa_softc	*sc = req->ctlr;

	FUNC6(10, sc, "entered");

	/* If the command involved data, unmap that too. */
	if (req->data != NULL) {
		if (req->flags & TW_OSLI_REQ_FLAGS_PASSTHRU) {
			/* Lock against multiple simultaneous ioctl calls. */
			FUNC4(sc->io_lock);

			if (req->flags & TW_OSLI_REQ_FLAGS_DATA_IN) {
				FUNC1(sc->ioctl_tag,
					sc->ioctl_map, BUS_DMASYNC_POSTREAD);

				/* 
				 * If we are using a bounce buffer, and we are
				 * reading data, copy the real data in.
				 */
				if (req->flags & TW_OSLI_REQ_FLAGS_DATA_COPY_NEEDED)
					FUNC0(req->data, req->real_data,
						req->real_length);
			}

			if (req->flags & TW_OSLI_REQ_FLAGS_DATA_OUT)
				FUNC1(sc->ioctl_tag, sc->ioctl_map,
					BUS_DMASYNC_POSTWRITE);

			FUNC2(sc->ioctl_tag, sc->ioctl_map);

			FUNC5(sc->io_lock);
		} else {
			if (req->flags & TW_OSLI_REQ_FLAGS_DATA_IN) {
				FUNC1(sc->dma_tag,
					req->dma_map, BUS_DMASYNC_POSTREAD);

				/* 
				 * If we are using a bounce buffer, and we are
				 * reading data, copy the real data in.
				 */
				if (req->flags & TW_OSLI_REQ_FLAGS_DATA_COPY_NEEDED)
					FUNC0(req->data, req->real_data,
						req->real_length);
			}
			if (req->flags & TW_OSLI_REQ_FLAGS_DATA_OUT)
				FUNC1(sc->dma_tag, req->dma_map,
					BUS_DMASYNC_POSTWRITE);

			FUNC2(sc->dma_tag, req->dma_map);
		}
	}

	/* Free alignment buffer if it was used. */
	if (req->flags & TW_OSLI_REQ_FLAGS_DATA_COPY_NEEDED) {
		FUNC3(req->data, TW_OSLI_MALLOC_CLASS);
		/* Restore original data pointer and length. */
		req->data = req->real_data;
		req->length = req->real_length;
	}
}