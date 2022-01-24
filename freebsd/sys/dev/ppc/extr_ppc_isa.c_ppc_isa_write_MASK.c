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
typedef  int u_int ;
struct ppc_data {int ppc_avm; scalar_t__ ppc_dmachan; int ppc_dmacnt; int ppc_mode; void* ppc_dmastat; int /*<<< orphan*/  ppc_lock; scalar_t__ ppc_dmaddr; scalar_t__ ppc_dmaflags; int /*<<< orphan*/  ppc_irqstat; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINTR ; 
 int EINVAL ; 
 int EWOULDBLOCK ; 
 char IRQENABLE ; 
 int PCATCH ; 
 int PPBPRI ; 
#define  PPB_COMPATIBLE 129 
#define  PPB_ECP 128 
 int /*<<< orphan*/  FUNC1 (struct ppc_data*) ; 
 char PPC_DISABLE_INTR ; 
 void* PPC_DMA_INIT ; 
 void* PPC_DMA_INTERRUPTED ; 
 void* PPC_DMA_STARTED ; 
 char PPC_ECR_ECP ; 
 char PPC_ECR_FIFO ; 
 char PPC_ECR_RESET ; 
 char PPC_ECR_STD ; 
 char PPC_ENABLE_DMA ; 
 int PPC_FIFO_EMPTY ; 
 int /*<<< orphan*/  PPC_IRQ_DMA ; 
 char PPC_SERVICE_INTR ; 
 struct ppc_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int,scalar_t__) ; 
 int FUNC5 (struct ppc_data*,int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 char FUNC7 (struct ppc_data*) ; 
 int FUNC8 (struct ppc_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct ppc_data*,char) ; 
 int /*<<< orphan*/  FUNC10 (struct ppc_data*,char) ; 

int
FUNC11(device_t dev, char *buf, int len, int how)
{
	struct ppc_data *ppc = FUNC2(dev);
	char ecr, ecr_sav, ctr, ctr_sav;
	int error = 0;
	int spin;

	FUNC1(ppc);
	if (!(ppc->ppc_avm & PPB_ECP))
		return (EINVAL);
	if (ppc->ppc_dmachan == 0)
		return (EINVAL);

#ifdef PPC_DEBUG
	printf("w");
#endif

	ecr_sav = FUNC8(ppc);
	ctr_sav = FUNC7(ppc);

	/*
	 * Send buffer with DMA, FIFO and interrupts
	 */

	/* byte mode, no intr, no DMA, dir=0, flush fifo */
	ecr = PPC_ECR_STD | PPC_DISABLE_INTR;
	FUNC10(ppc, ecr);

	/* disable nAck interrupts */
	ctr = FUNC7(ppc);
	ctr &= ~IRQENABLE;
	FUNC9(ppc, ctr);

	ppc->ppc_dmaflags = 0;
	ppc->ppc_dmaddr = (caddr_t)buf;
	ppc->ppc_dmacnt = (u_int)len;

	switch (ppc->ppc_mode) {
	case PPB_COMPATIBLE:
		/* compatible mode with FIFO, no intr, DMA, dir=0 */
		ecr = PPC_ECR_FIFO | PPC_DISABLE_INTR | PPC_ENABLE_DMA;
		break;
	case PPB_ECP:
		ecr = PPC_ECR_ECP | PPC_DISABLE_INTR | PPC_ENABLE_DMA;
		break;
	default:
		error = EINVAL;
		goto error;
	}

	FUNC10(ppc, ecr);
	ecr = FUNC8(ppc);

	ppc->ppc_dmastat = PPC_DMA_INIT;

	/* enable interrupts */
	ecr &= ~PPC_SERVICE_INTR;
	ppc->ppc_irqstat = PPC_IRQ_DMA;
	FUNC10(ppc, ecr);

	FUNC4(ppc->ppc_dmaflags, ppc->ppc_dmaddr, ppc->ppc_dmacnt,
		     ppc->ppc_dmachan);
	ppc->ppc_dmastat = PPC_DMA_STARTED;

#ifdef PPC_DEBUG
	printf("s%d", ppc->ppc_dmacnt);
#endif

	/* Wait for the DMA completed interrupt. We hope we won't
	 * miss it, otherwise a signal will be necessary to unlock the
	 * process.
	 */
	do {
		/* release CPU */
		error = FUNC5(ppc, &ppc->ppc_lock, PPBPRI | PCATCH,
		    "ppcdma", 0);
	} while (error == EWOULDBLOCK);

	if (error) {
#ifdef PPC_DEBUG
		printf("i");
#endif
		/* stop DMA */
		FUNC3(ppc->ppc_dmaflags, ppc->ppc_dmaddr,
			    ppc->ppc_dmacnt, ppc->ppc_dmachan);

		/* no dma, no interrupt, flush the fifo */
		FUNC10(ppc, PPC_ECR_RESET);

		ppc->ppc_dmastat = PPC_DMA_INTERRUPTED;
		goto error;
	}

	/* wait for an empty fifo */
	while (!(FUNC8(ppc) & PPC_FIFO_EMPTY)) {

		for (spin=100; spin; spin--)
			if (FUNC8(ppc) & PPC_FIFO_EMPTY)
				goto fifo_empty;
#ifdef PPC_DEBUG
		printf("Z");
#endif
		error = FUNC5(ppc, &ppc->ppc_lock, PPBPRI | PCATCH,
		    "ppcfifo", hz / 100);
		if (error != EWOULDBLOCK) {
#ifdef PPC_DEBUG
			printf("I");
#endif
			/* no dma, no interrupt, flush the fifo */
			FUNC10(ppc, PPC_ECR_RESET);

			ppc->ppc_dmastat = PPC_DMA_INTERRUPTED;
			error = EINTR;
			goto error;
		}
	}

fifo_empty:
	/* no dma, no interrupt, flush the fifo */
	FUNC10(ppc, PPC_ECR_RESET);

error:
	/* PDRQ must be kept unasserted until nPDACK is
	 * deasserted for a minimum of 350ns (SMC datasheet)
	 *
	 * Consequence may be a FIFO that never empty
	 */
	FUNC0(1);

	FUNC10(ppc, ecr_sav);
	FUNC9(ppc, ctr_sav);
	return (error);
}