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
typedef  int u_int32_t ;
struct tpm_softc {int sc_vector; int sc_capabilities; int /*<<< orphan*/  sc_bh; int /*<<< orphan*/  sc_bt; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int IRQUNK ; 
 int TPM_DEV_NOINTS ; 
 int TPM_GLOBAL_INT_ENABLE ; 
 int /*<<< orphan*/  TPM_INTERRUPT_ENABLE ; 
 int TPM_INTF_INT_EDGE_RISING ; 
 int TPM_INTF_INT_LEVEL_HIGH ; 
 int TPM_INT_EDGE_RISING ; 
 int TPM_INT_LEVEL_HIGH ; 
 int TPM_INT_LEVEL_LOW ; 
 int /*<<< orphan*/  TPM_INT_STATUS ; 
 int /*<<< orphan*/  TPM_INT_VECTOR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* tpm_devs ; 

int
FUNC3(struct tpm_softc *sc, int irq, int idx)
{
	u_int32_t r;

	if ((irq == IRQUNK) || (tpm_devs[idx].flags & TPM_DEV_NOINTS)) {
		sc->sc_vector = IRQUNK;
		return 0;
	}

	/* Ack and disable all interrupts. */
	FUNC2(sc->sc_bt, sc->sc_bh, TPM_INTERRUPT_ENABLE,
	    FUNC0(sc->sc_bt, sc->sc_bh, TPM_INTERRUPT_ENABLE) &
	    ~TPM_GLOBAL_INT_ENABLE);
	FUNC2(sc->sc_bt, sc->sc_bh, TPM_INT_STATUS,
	    FUNC0(sc->sc_bt, sc->sc_bh, TPM_INT_STATUS));

	/* Program interrupt vector. */
	FUNC1(sc->sc_bt, sc->sc_bh, TPM_INT_VECTOR, irq);
	sc->sc_vector = irq;

	/* Program interrupt type. */
	if (sc->sc_capabilities & TPM_INTF_INT_EDGE_RISING)
		r = TPM_INT_EDGE_RISING;
	else if (sc->sc_capabilities & TPM_INTF_INT_LEVEL_HIGH)
		r = TPM_INT_LEVEL_HIGH;
	else
		r = TPM_INT_LEVEL_LOW;
	FUNC2(sc->sc_bt, sc->sc_bh, TPM_INTERRUPT_ENABLE, r);

	return 0;
}