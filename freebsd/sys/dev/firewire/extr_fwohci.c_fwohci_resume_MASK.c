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
struct TYPE_5__ {int nisodma; int /*<<< orphan*/  (* ibr ) (TYPE_2__*) ;int /*<<< orphan*/  (* irx_enable ) (TYPE_2__*,int) ;int /*<<< orphan*/  dev; } ;
struct fwohci_softc {TYPE_2__ fc; TYPE_1__* ir; } ;
struct fw_xferq {int flag; int /*<<< orphan*/  stfree; int /*<<< orphan*/  stdma; } ;
struct fw_bulkxfer {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {struct fw_xferq xferq; } ;

/* Variables and functions */
 int FWXFERQ_RUNNING ; 
 struct fw_bulkxfer* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct fw_bulkxfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fwohci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

int
FUNC8(struct fwohci_softc *sc, device_t dev)
{
	int i;
	struct fw_xferq *ir;
	struct fw_bulkxfer *chunk;

	FUNC5(sc, dev);
	/* XXX resume isochronous receive automatically. (how about TX?) */
	for (i = 0; i < sc->fc.nisodma; i++) {
		ir = &sc->ir[i].xferq;
		if ((ir->flag & FWXFERQ_RUNNING) != 0) {
			FUNC4(sc->fc.dev,
				"resume iso receive ch: %d\n", i);
			ir->flag &= ~FWXFERQ_RUNNING;
			/* requeue stdma to stfree */
			while ((chunk = FUNC0(&ir->stdma)) != NULL) {
				FUNC2(&ir->stdma, link);
				FUNC1(&ir->stfree, chunk, link);
			}
			sc->fc.irx_enable(&sc->fc, i);
		}
	}

	FUNC3(dev);
	sc->fc.ibr(&sc->fc);
	return 0;
}