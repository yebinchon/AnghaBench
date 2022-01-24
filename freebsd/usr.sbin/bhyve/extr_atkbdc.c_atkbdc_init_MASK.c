#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vmctx {int dummy; } ;
struct inout_port {char* name; int size; struct atkbdc_softc* arg; int /*<<< orphan*/  handler; void* flags; int /*<<< orphan*/  port; } ;
struct TYPE_4__ {void* irq; } ;
struct TYPE_3__ {void* irq; } ;
struct atkbdc_softc {int /*<<< orphan*/  ps2mouse_sc; int /*<<< orphan*/  ps2kbd_sc; TYPE_2__ aux; TYPE_1__ kbd; int /*<<< orphan*/  mtx; struct vmctx* ctx; } ;

/* Variables and functions */
 void* AUX_DEV_IRQ ; 
 void* IOPORT_F_INOUT ; 
 int /*<<< orphan*/  KBD_DATA_PORT ; 
 void* KBD_DEV_IRQ ; 
 int /*<<< orphan*/  KBD_STS_CTL_PORT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  atkbdc_data_handler ; 
 int /*<<< orphan*/  atkbdc_sts_ctl_handler ; 
 int /*<<< orphan*/  FUNC1 (struct inout_port*,int) ; 
 struct atkbdc_softc* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct atkbdc_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct atkbdc_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct inout_port*) ; 

void
FUNC8(struct vmctx *ctx)
{
	struct inout_port iop;
	struct atkbdc_softc *sc;
	int error;

	sc = FUNC2(1, sizeof(struct atkbdc_softc));
	sc->ctx = ctx;

	FUNC6(&sc->mtx, NULL);

	FUNC1(&iop, sizeof(struct inout_port));
	iop.name = "atkdbc";
	iop.port = KBD_STS_CTL_PORT;
	iop.size = 1;
	iop.flags = IOPORT_F_INOUT;
	iop.handler = atkbdc_sts_ctl_handler;
	iop.arg = sc;

	error = FUNC7(&iop);
	FUNC0(error == 0);

	FUNC1(&iop, sizeof(struct inout_port));
	iop.name = "atkdbc";
	iop.port = KBD_DATA_PORT;
	iop.size = 1;
	iop.flags = IOPORT_F_INOUT;
	iop.handler = atkbdc_data_handler;
	iop.arg = sc;

	error = FUNC7(&iop);
	FUNC0(error == 0);

	FUNC3(KBD_DEV_IRQ);
	sc->kbd.irq = KBD_DEV_IRQ;

	FUNC3(AUX_DEV_IRQ);
	sc->aux.irq = AUX_DEV_IRQ;

	sc->ps2kbd_sc = FUNC4(sc);
	sc->ps2mouse_sc = FUNC5(sc);
}