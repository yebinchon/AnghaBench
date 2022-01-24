#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct sndcard_func {int /*<<< orphan*/  func; TYPE_1__* varinfo; } ;
typedef  TYPE_2__* sc_p ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_16__ {int /*<<< orphan*/ * io; void* io_rid; int /*<<< orphan*/ * mem; void* mem_rid; int /*<<< orphan*/ * irq; void* irq_rid; } ;
typedef  TYPE_3__ csa_res ;
struct TYPE_14__ {TYPE_10__* card; } ;
struct TYPE_15__ {int /*<<< orphan*/  ih; void* midi; TYPE_1__ binfo; void* pcm; TYPE_10__* card; TYPE_3__ res; int /*<<< orphan*/  dev; } ;
struct TYPE_13__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BA0_HICR ; 
 int /*<<< orphan*/  BA0_HISR ; 
 int ENOMEM ; 
 int ENXIO ; 
 int HICR_CHGM ; 
 int HICR_IEV ; 
 int HISR_INTENA ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 void* FUNC0 (int) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SCF_MIDI ; 
 int /*<<< orphan*/  SCF_PCM ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 TYPE_10__* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  csa_intr ; 
 int FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (void*,struct sndcard_func*) ; 
 struct sndcard_func* FUNC15 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC19(device_t dev)
{
	sc_p scp;
	csa_res *resp;
	struct sndcard_func *func;
	int error = ENXIO;

	scp = FUNC13(dev);

	/* Fill in the softc. */
	FUNC5(scp, sizeof(*scp));
	scp->dev = dev;

	FUNC16(dev);

	/* Allocate the resources. */
	resp = &scp->res;
	scp->card = FUNC7(dev);
	scp->binfo.card = scp->card;
	FUNC17("csa: card is %s\n", scp->card->name);
	resp->io_rid = FUNC0(0);
	resp->io = FUNC1(dev, SYS_RES_MEMORY, 
		&resp->io_rid, RF_ACTIVE);
	if (resp->io == NULL)
		return (ENXIO);
	resp->mem_rid = FUNC0(1);
	resp->mem = FUNC1(dev, SYS_RES_MEMORY,
		&resp->mem_rid, RF_ACTIVE);
	if (resp->mem == NULL)
		goto err_io;
	resp->irq_rid = 0;
	resp->irq = FUNC1(dev, SYS_RES_IRQ,
		&resp->irq_rid, RF_ACTIVE | RF_SHAREABLE);
	if (resp->irq == NULL)
		goto err_mem;

	/* Enable interrupt. */
	if (FUNC18(dev, resp->irq, 0, csa_intr, scp, &scp->ih))
		goto err_intr;
#if 0
	if ((csa_readio(resp, BA0_HISR) & HISR_INTENA) == 0)
		csa_writeio(resp, BA0_HICR, HICR_IEV | HICR_CHGM);
#endif

	/* Initialize the chip. */
	if (FUNC8(scp))
		goto err_teardown;

	/* Reset the Processor. */
	FUNC10(resp);

	/* Download the Processor Image to the processor. */
	if (FUNC6(resp))
		goto err_teardown;

	/* Attach the children. */

	/* PCM Audio */
	func = FUNC15(sizeof(struct sndcard_func), M_DEVBUF, M_NOWAIT | M_ZERO);
	if (func == NULL) {
		error = ENOMEM;
		goto err_teardown;
	}
	func->varinfo = &scp->binfo;
	func->func = SCF_PCM;
	scp->pcm = FUNC12(dev, "pcm", -1);
	FUNC14(scp->pcm, func);

	/* Midi Interface */
	func = FUNC15(sizeof(struct sndcard_func), M_DEVBUF, M_NOWAIT | M_ZERO);
	if (func == NULL) {
		error = ENOMEM;
		goto err_teardown;
	}
	func->varinfo = &scp->binfo;
	func->func = SCF_MIDI;
	scp->midi = FUNC12(dev, "midi", -1);
	FUNC14(scp->midi, func);

	FUNC2(dev);

	return (0);

err_teardown:
	FUNC4(dev, resp->irq, scp->ih);
err_intr:
	FUNC3(dev, SYS_RES_IRQ, resp->irq_rid, resp->irq);
err_mem:
	FUNC3(dev, SYS_RES_MEMORY, resp->mem_rid, resp->mem);
err_io:
	FUNC3(dev, SYS_RES_MEMORY, resp->io_rid, resp->io);
	return (error);
}