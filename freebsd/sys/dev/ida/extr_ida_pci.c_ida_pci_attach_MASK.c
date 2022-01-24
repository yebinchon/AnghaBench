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
typedef  scalar_t__ u_int32_t ;
struct ida_softc {int regs_res_id; int /*<<< orphan*/  ih; int /*<<< orphan*/ * irq; int /*<<< orphan*/  irq_res_type; int /*<<< orphan*/  parent_dmat; int /*<<< orphan*/ * regs; int /*<<< orphan*/  regs_res_type; int /*<<< orphan*/  lock; int /*<<< orphan*/  ch; int /*<<< orphan*/  flags; int /*<<< orphan*/  cmd; int /*<<< orphan*/  dev; } ;
struct ida_board {int /*<<< orphan*/  flags; int /*<<< orphan*/ * accessor; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_ALLOCNOW ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE_32BIT ; 
 int /*<<< orphan*/  BUS_SPACE_UNRESTRICTED ; 
 int ENOMEM ; 
 scalar_t__ IDA_DEVICEID_DEC_SMART ; 
 int IDA_PCI_MEMADDR ; 
 int INTR_ENTROPY ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ida_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct ida_softc*) ; 
 int /*<<< orphan*/  ida_intr ; 
 struct ida_board* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ida_softc*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	struct ida_board *board = FUNC9(dev);
	u_int32_t id = FUNC12(dev);
	struct ida_softc *ida;
	int error, rid;

	ida = (struct ida_softc *)FUNC6(dev);
	ida->dev = dev;
	ida->cmd = *board->accessor;
	ida->flags = board->flags;
	FUNC11(&ida->lock, "ida", NULL, MTX_DEF);
	FUNC5(&ida->ch, &ida->lock, 0);

	ida->regs_res_type = SYS_RES_MEMORY;
	ida->regs_res_id = IDA_PCI_MEMADDR;
	if (id == IDA_DEVICEID_DEC_SMART)
		ida->regs_res_id = FUNC0(0);

	ida->regs = FUNC1(dev, ida->regs_res_type,
	    &ida->regs_res_id, RF_ACTIVE);
	if (ida->regs == NULL) {
		FUNC7(dev, "can't allocate memory resources\n");
		return (ENOMEM);
	}

	error = FUNC2(
		/* parent	*/ FUNC3(dev),
		/* alignment	*/ 1,
		/* boundary	*/ 0,
		/* lowaddr	*/ BUS_SPACE_MAXADDR_32BIT,
		/* highaddr	*/ BUS_SPACE_MAXADDR,
		/* filter	*/ NULL,
		/* filterarg	*/ NULL,
		/* maxsize	*/ BUS_SPACE_MAXSIZE_32BIT,
		/* nsegments	*/ BUS_SPACE_UNRESTRICTED,
		/* maxsegsize	*/ BUS_SPACE_MAXSIZE_32BIT,
		/* flags	*/ BUS_DMA_ALLOCNOW,
		/* lockfunc	*/ NULL,
		/* lockarg	*/ NULL,
		&ida->parent_dmat);
	if (error != 0) {
		FUNC7(dev, "can't allocate DMA tag\n");
		FUNC8(ida);
		return (ENOMEM);
	}

	rid = 0;
	ida->irq_res_type = SYS_RES_IRQ;
	ida->irq = FUNC1(dev, ida->irq_res_type, &rid,
	    RF_ACTIVE | RF_SHAREABLE);
	if (ida->irq == NULL) {
	        FUNC8(ida);
	        return (ENOMEM);
	}
	error = FUNC4(dev, ida->irq, INTR_TYPE_BIO | INTR_ENTROPY | INTR_MPSAFE,
	    NULL, ida_intr, ida, &ida->ih);
	if (error) {
		FUNC7(dev, "can't setup interrupt\n");
		FUNC8(ida);
		return (ENOMEM);
	}

	error = FUNC10(ida);
	if (error) {
	        FUNC8(ida);
	        return (error);
	}

	return (0);
}