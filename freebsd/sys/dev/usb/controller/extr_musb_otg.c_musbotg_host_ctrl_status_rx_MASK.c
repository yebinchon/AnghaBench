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
typedef  int uint8_t ;
struct musbotg_td {int channel; int transaction_started; int dev_addr; int haddr; int hport; int transfer_type; int error; int /*<<< orphan*/  pc; } ;
struct musbotg_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int MAX_NAK_TO ; 
 int MUSB2_MASK_CSR0H_PING_DIS ; 
 int MUSB2_MASK_CSR0L_ERROR ; 
 int MUSB2_MASK_CSR0L_NAKTIMO ; 
 int MUSB2_MASK_CSR0L_REQPKT ; 
 int MUSB2_MASK_CSR0L_RXPKTRDY ; 
 int MUSB2_MASK_CSR0L_RXPKTRDY_CLR ; 
 int MUSB2_MASK_CSR0L_RXSTALL ; 
 int MUSB2_MASK_CSR0L_STATUSPKT ; 
 int FUNC1 (struct musbotg_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MUSB2_REG_EPINDEX ; 
 int /*<<< orphan*/  MUSB2_REG_RXCSRH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MUSB2_REG_RXNAKLIMIT ; 
 int /*<<< orphan*/  MUSB2_REG_RXTI ; 
 int /*<<< orphan*/  MUSB2_REG_TXCSRL ; 
 int /*<<< orphan*/  FUNC5 (struct musbotg_softc*,int /*<<< orphan*/ ,int) ; 
 struct musbotg_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct musbotg_softc*,struct musbotg_td*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct musbotg_softc*,struct musbotg_td*) ; 

__attribute__((used)) static uint8_t
FUNC9(struct musbotg_td *td)
{
	struct musbotg_softc *sc;
	uint8_t csr, csrh;

	/* get pointer to softc */
	sc = FUNC6(td->pc);

	if (td->channel == -1)
		td->channel = FUNC7(sc, td, 0);

	/* EP0 is busy, wait */
	if (td->channel == -1)
		return (1);

	FUNC0(1, "ep_no=%d\n", td->channel);

	/* select endpoint 0 */
	FUNC5(sc, MUSB2_REG_EPINDEX, 0);

	if (!td->transaction_started) {
		FUNC5(sc, FUNC2(0),
		    td->dev_addr);

		FUNC5(sc, FUNC3(0), td->haddr);
		FUNC5(sc, FUNC4(0), td->hport);
		FUNC5(sc, MUSB2_REG_RXTI, td->transfer_type);

		/* RX NAK timeout */
		FUNC5(sc, MUSB2_REG_RXNAKLIMIT, MAX_NAK_TO);

		td->transaction_started = 1;

		/* Disable PING */
		csrh = FUNC1(sc, MUSB2_REG_RXCSRH);
		csrh |= MUSB2_MASK_CSR0H_PING_DIS;
		FUNC5(sc, MUSB2_REG_RXCSRH, csrh);

		/* write command */
		FUNC5(sc, MUSB2_REG_TXCSRL,
		    MUSB2_MASK_CSR0L_STATUSPKT | 
		    MUSB2_MASK_CSR0L_REQPKT);

		return (1); /* Just started */

	}

	csr = FUNC1(sc, MUSB2_REG_TXCSRL);

	FUNC0(4, "IN STATUS csr=0x%02x\n", csr);

	if (csr & MUSB2_MASK_CSR0L_RXPKTRDY) {
		FUNC5(sc, MUSB2_REG_TXCSRL,
		    MUSB2_MASK_CSR0L_RXPKTRDY_CLR);
		FUNC8(sc, td);
		return (0); /* complete */
	}

	if (csr & MUSB2_MASK_CSR0L_NAKTIMO) {
		csr &= ~ (MUSB2_MASK_CSR0L_STATUSPKT |
		    MUSB2_MASK_CSR0L_REQPKT);
		FUNC5(sc, MUSB2_REG_TXCSRL, csr);

		csr &= ~MUSB2_MASK_CSR0L_NAKTIMO;
		FUNC5(sc, MUSB2_REG_TXCSRL, csr);
		td->error = 1;
	}

	/* Failed */
	if (csr & (MUSB2_MASK_CSR0L_RXSTALL |
	    MUSB2_MASK_CSR0L_ERROR))
	{
		/* Clear status bit */
		FUNC5(sc, MUSB2_REG_TXCSRL, 0);
		FUNC0(1, "error bit set, csr=0x%02x\n", csr);
		td->error = 1;
	}

	if (td->error) {
		FUNC8(sc, td);
		return (0);
	}

	return (1);			/* Not ready yet */
}