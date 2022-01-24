#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int /*<<< orphan*/  psim; int /*<<< orphan*/  ppath; int /*<<< orphan*/  irq; int /*<<< orphan*/  ih; int /*<<< orphan*/  buffer_dmat; int /*<<< orphan*/  sense_dmat; int /*<<< orphan*/  sense_dmamap; int /*<<< orphan*/  sense_buffers; int /*<<< orphan*/  srb_dmat; int /*<<< orphan*/  srb_dmamap; int /*<<< orphan*/  pFreeSRB; int /*<<< orphan*/  sg_dmat; int /*<<< orphan*/  iores; } ;
typedef  TYPE_1__* PACB ;

/* Variables and functions */
 int /*<<< orphan*/  AC_LOST_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	PACB pACB = FUNC8(dev);

	FUNC4(dev, SYS_RES_IOPORT, FUNC0(0), pACB->iores);
	FUNC9(pACB);
	FUNC1(pACB->sg_dmat);
	FUNC2(pACB->srb_dmat, pACB->srb_dmamap);
	FUNC3(pACB->srb_dmat, pACB->pFreeSRB,
	    pACB->srb_dmamap);
	FUNC1(pACB->srb_dmat);	
	FUNC2(pACB->sense_dmat, pACB->sense_dmamap);
	FUNC3(pACB->sense_dmat, pACB->sense_buffers,
	    pACB->sense_dmamap);
	FUNC1(pACB->sense_dmat);				      
	FUNC1(pACB->buffer_dmat);
	FUNC5(dev, pACB->irq, pACB->ih);
	FUNC4(dev, SYS_RES_IRQ, 0, pACB->irq);
	FUNC10(AC_LOST_DEVICE, pACB->ppath, NULL);
	FUNC12(pACB->ppath);
	FUNC11(FUNC7(pACB->psim));
	FUNC6(pACB->psim, TRUE);
	return (0);
}