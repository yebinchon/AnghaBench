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
struct twa_softc {int /*<<< orphan*/  sysctl_ctxt; struct cdev* ctrl_dev; int /*<<< orphan*/ * reg_res; int /*<<< orphan*/  reg_res_id; int /*<<< orphan*/  bus_dev; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/  irq_res_id; scalar_t__ parent_tag; scalar_t__ ioctl_tag; scalar_t__ dma_tag; scalar_t__ cmd_tag; int /*<<< orphan*/  cmd_map; scalar_t__ dma_mem; scalar_t__ non_dma_mem; scalar_t__ req_ctx_buf; scalar_t__ ioctl_map; } ;
struct tw_osli_req_context {scalar_t__ dma_map; int /*<<< orphan*/  ioctl_wake_timeout_lock; } ;
struct cdev {int dummy; } ;
typedef  int /*<<< orphan*/  TW_VOID ;
typedef  int /*<<< orphan*/  TW_INT32 ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  TW_OSLI_FREE_Q ; 
 int /*<<< orphan*/  TW_OSLI_MALLOC_CLASS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct twa_softc*) ; 
 int /*<<< orphan*/  FUNC10 (int,struct twa_softc*,char*,...) ; 
 struct tw_osli_req_context* FUNC11 (struct twa_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct twa_softc*) ; 

__attribute__((used)) static TW_VOID
FUNC13(struct twa_softc *sc)
{
	struct tw_osli_req_context	*req;
	TW_INT32			error = 0;

	FUNC10(3, sc, "entered");

	/* Detach from CAM */
	FUNC9(sc);

	if (sc->req_ctx_buf)
		while ((req = FUNC11(sc, TW_OSLI_FREE_Q)) !=
			NULL) {
			FUNC7(req->ioctl_wake_timeout_lock);

			if ((error = FUNC1(sc->dma_tag,
					req->dma_map)))
				FUNC10(1, sc,
					"dmamap_destroy(dma) returned %d",
					error);
		}

	if ((sc->ioctl_tag) && (sc->ioctl_map))
		if ((error = FUNC1(sc->ioctl_tag, sc->ioctl_map)))
			FUNC10(1, sc,
				"dmamap_destroy(ioctl) returned %d", error);

	/* Free all memory allocated so far. */
	if (sc->req_ctx_buf)
		FUNC6(sc->req_ctx_buf, TW_OSLI_MALLOC_CLASS);

	if (sc->non_dma_mem)
		FUNC6(sc->non_dma_mem, TW_OSLI_MALLOC_CLASS);

	if (sc->dma_mem) {
		FUNC2(sc->cmd_tag, sc->cmd_map);
		FUNC3(sc->cmd_tag, sc->dma_mem,
			sc->cmd_map);
	}
	if (sc->cmd_tag)
		if ((error = FUNC0(sc->cmd_tag)))
			FUNC10(1, sc,
				"dma_tag_destroy(cmd) returned %d", error);

	if (sc->dma_tag)
		if ((error = FUNC0(sc->dma_tag)))
			FUNC10(1, sc,
				"dma_tag_destroy(dma) returned %d", error);

	if (sc->ioctl_tag)
		if ((error = FUNC0(sc->ioctl_tag)))
			FUNC10(1, sc,
				"dma_tag_destroy(ioctl) returned %d", error);

	if (sc->parent_tag)
		if ((error = FUNC0(sc->parent_tag)))
			FUNC10(1, sc,
				"dma_tag_destroy(parent) returned %d", error);


	/* Disconnect the interrupt handler. */
	if ((error = FUNC12(sc)))
			FUNC10(1, sc,
				"teardown_intr returned %d", error);

	if (sc->irq_res != NULL)
		if ((error = FUNC4(sc->bus_dev,
				SYS_RES_IRQ, sc->irq_res_id, sc->irq_res)))
			FUNC10(1, sc,
				"release_resource(irq) returned %d", error);


	/* Release the register window mapping. */
	if (sc->reg_res != NULL)
		if ((error = FUNC4(sc->bus_dev,
				SYS_RES_MEMORY, sc->reg_res_id, sc->reg_res)))
			FUNC10(1, sc,
				"release_resource(io) returned %d", error);


	/* Destroy the control device. */
	if (sc->ctrl_dev != (struct cdev *)NULL)
		FUNC5(sc->ctrl_dev);

	if ((error = FUNC8(&sc->sysctl_ctxt)))
		FUNC10(1, sc,
			"sysctl_ctx_free returned %d", error);

}