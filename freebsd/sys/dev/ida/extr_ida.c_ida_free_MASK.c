#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ida_softc {int /*<<< orphan*/  lock; int /*<<< orphan*/ * regs; int /*<<< orphan*/  regs_res_id; int /*<<< orphan*/  regs_res_type; int /*<<< orphan*/  dev; int /*<<< orphan*/ * parent_dmat; int /*<<< orphan*/ * irq; int /*<<< orphan*/  irq_res_type; TYPE_1__* qcbs; int /*<<< orphan*/ * hwqcb_dmat; int /*<<< orphan*/  hwqcb_dmamap; scalar_t__ hwqcbs; scalar_t__ hwqcb_busaddr; int /*<<< orphan*/ * buffer_dmat; int /*<<< orphan*/  ch; int /*<<< orphan*/ * ih; } ;
struct TYPE_2__ {int /*<<< orphan*/  dmamap; } ;

/* Variables and functions */
 int IDA_QCB_MAX ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void
FUNC12(struct ida_softc *ida)
{
	int i;

	if (ida->ih != NULL)
		FUNC5(ida->dev, ida->irq, ida->ih);

	FUNC10(&ida->lock);
	FUNC7(&ida->ch);
	FUNC11(&ida->lock);
	FUNC6(&ida->ch);

	if (ida->buffer_dmat) {
		for (i = 0; i < IDA_QCB_MAX; i++)
			FUNC1(ida->buffer_dmat, ida->qcbs[i].dmamap);
		FUNC0(ida->buffer_dmat);
	}

	if (ida->hwqcb_dmat) {
		if (ida->hwqcb_busaddr)
			FUNC2(ida->hwqcb_dmat, ida->hwqcb_dmamap);
		if (ida->hwqcbs)
			FUNC3(ida->hwqcb_dmat, ida->hwqcbs,
			    ida->hwqcb_dmamap);
		FUNC0(ida->hwqcb_dmat);
	}

	if (ida->qcbs != NULL)
		FUNC8(ida->qcbs, M_DEVBUF);

	if (ida->irq != NULL)
		FUNC4(ida->dev, ida->irq_res_type,
		    0, ida->irq);

	if (ida->parent_dmat != NULL)
		FUNC0(ida->parent_dmat);

	if (ida->regs != NULL)
		FUNC4(ida->dev, ida->regs_res_type,
		    ida->regs_res_id, ida->regs);

	FUNC9(&ida->lock);
}