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
typedef  scalar_t__ uint8_t ;
struct vge_softc {scalar_t__ vge_tx_coal_pkt; scalar_t__ vge_rx_coal_pkt; scalar_t__ vge_int_holdoff; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vge_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  VGE_CAMCTL ; 
 scalar_t__ VGE_CR3_INT_HOLDOFF ; 
 int /*<<< orphan*/  VGE_CRC3 ; 
 int /*<<< orphan*/  VGE_CRS3 ; 
 int /*<<< orphan*/  VGE_INTCTL1 ; 
 scalar_t__ VGE_INTCTL_HC_RELOAD ; 
 scalar_t__ VGE_INTCTL_RXINTSUP_DISABLE ; 
 scalar_t__ VGE_INTCTL_SC_RELOAD ; 
 scalar_t__ VGE_INTCTL_TXINTSUP_DISABLE ; 
 int /*<<< orphan*/  VGE_INTHOLDOFF ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct vge_softc*) ; 
 scalar_t__ VGE_PAGESEL_INTHLDOFF ; 
 scalar_t__ VGE_PAGESEL_RXSUPPTHR ; 
 scalar_t__ VGE_PAGESEL_TXSUPPTHR ; 
 int /*<<< orphan*/  VGE_RXSUPPTHR ; 
 int /*<<< orphan*/  VGE_TXSUPPTHR ; 

__attribute__((used)) static void
FUNC4(struct vge_softc *sc)
{
	uint8_t intctl;

	FUNC3(sc);

	/*
	 * Set Tx interrupt supression threshold.
	 * It's possible to use single-shot timer in VGE_CRS1 register
	 * in Tx path such that driver can remove most of Tx completion
	 * interrupts. However this requires additional access to
	 * VGE_CRS1 register to reload the timer in addintion to
	 * activating Tx kick command. Another downside is we don't know
	 * what single-shot timer value should be used in advance so
	 * reclaiming transmitted mbufs could be delayed a lot which in
	 * turn slows down Tx operation.
	 */
	FUNC1(sc, VGE_CAMCTL, VGE_PAGESEL_TXSUPPTHR);
	FUNC1(sc, VGE_TXSUPPTHR, sc->vge_tx_coal_pkt);

	/* Set Rx interrupt suppresion threshold. */
	FUNC1(sc, VGE_CAMCTL, VGE_PAGESEL_RXSUPPTHR);
	FUNC1(sc, VGE_RXSUPPTHR, sc->vge_rx_coal_pkt);

	intctl = FUNC0(sc, VGE_INTCTL1);
	intctl &= ~VGE_INTCTL_SC_RELOAD;
	intctl |= VGE_INTCTL_HC_RELOAD;
	if (sc->vge_tx_coal_pkt <= 0)
		intctl |= VGE_INTCTL_TXINTSUP_DISABLE;
	else
		intctl &= ~VGE_INTCTL_TXINTSUP_DISABLE;
	if (sc->vge_rx_coal_pkt <= 0)
		intctl |= VGE_INTCTL_RXINTSUP_DISABLE;
	else
		intctl &= ~VGE_INTCTL_RXINTSUP_DISABLE;
	FUNC1(sc, VGE_INTCTL1, intctl);
	FUNC1(sc, VGE_CRC3, VGE_CR3_INT_HOLDOFF);
	if (sc->vge_int_holdoff > 0) {
		/* Set interrupt holdoff timer. */
		FUNC1(sc, VGE_CAMCTL, VGE_PAGESEL_INTHLDOFF);
		FUNC1(sc, VGE_INTHOLDOFF,
		    FUNC2(sc->vge_int_holdoff));
		/* Enable holdoff timer. */
		FUNC1(sc, VGE_CRS3, VGE_CR3_INT_HOLDOFF);
	}
}