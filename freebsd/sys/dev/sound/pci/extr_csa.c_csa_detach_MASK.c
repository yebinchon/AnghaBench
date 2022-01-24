#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sndcard_func {int dummy; } ;
typedef  TYPE_1__* sc_p ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_5__ {int /*<<< orphan*/  io; int /*<<< orphan*/  io_rid; int /*<<< orphan*/  mem; int /*<<< orphan*/  mem_rid; int /*<<< orphan*/  irq; int /*<<< orphan*/  irq_rid; } ;
typedef  TYPE_2__ csa_res ;
struct TYPE_4__ {int /*<<< orphan*/  ih; int /*<<< orphan*/ * pcm; int /*<<< orphan*/ * midi; TYPE_2__ res; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sndcard_func* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sndcard_func*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	csa_res *resp;
	sc_p scp;
	struct sndcard_func *func;
	int err;

	scp = FUNC5(dev);
	resp = &scp->res;

	if (scp->midi != NULL) {
		func = FUNC4(scp->midi);
		err = FUNC3(dev, scp->midi);
		if (err != 0)
			return err;
		if (func != NULL)
			FUNC6(func, M_DEVBUF);
		scp->midi = NULL;
	}

	if (scp->pcm != NULL) {
		func = FUNC4(scp->pcm);
		err = FUNC3(dev, scp->pcm);
		if (err != 0)
			return err;
		if (func != NULL)
			FUNC6(func, M_DEVBUF);
		scp->pcm = NULL;
	}

	FUNC2(dev, resp->irq, scp->ih);
	FUNC1(dev, SYS_RES_IRQ, resp->irq_rid, resp->irq);
	FUNC1(dev, SYS_RES_MEMORY, resp->mem_rid, resp->mem);
	FUNC1(dev, SYS_RES_MEMORY, resp->io_rid, resp->io);

	return FUNC0(dev);
}